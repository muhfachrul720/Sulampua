<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class News extends Operator_Controller {

	public function __construct()
	{
        parent::__construct();
        $this->load->model('admin/m_news');
        $this->load->model('admin/m_user');
    }

    public function index()
    {
        // Pagination 
        $total = $this->m_news->total_row()->num_rows();
        $from = $this->uri->segment(4);
        $this->pagination->initialize(cs_pagination('admin/dt_kasulampua/post', $total, 10));
        
        $row = $this->m_user->check_user(array('id' => $this->session->userdata('username')))->row();

        $status = $this->session->userdata('status');
        if($status == 1){
            $data['news'] = $this->m_news->display_news(10, $from, null, $this->input->post('search'))->result(); 
        } else if ($status == 2){
            $data['news'] = $this->m_news->display_news(10, $from, array('n.province_id' => $row->province_id), $this->input->post('search'))->result(); 
        } else {
            $data['news'] = $this->m_news->display_news(10, $from, array('n.user_id' => $this->session->userdata('username')), $this->input->post('search'))->result(); 
        }

        $this->load->view('_parts/admin_/header.php');
        $this->load->view('_parts/admin_/loader.php');
        $this->load->view('_parts/admin_/navbar.php');
        $this->load->view('_parts/admin_/sidebar.php');
        $this->load->view('admin/news_posting.php', $data);
        $this->load->view('_parts/admin_/modal.php');
        $this->load->view('_parts/admin_/script.php');
    }

    public function display_add($id = null)
    {   
        $data['result'] = null;
        $data['status'] = 'Tambah Berita';

        if($id != null) {
            $data['result'] = $this->m_news->get_dataindividual($id)->row();
            $data['status'] = 'Edit Berita';
        }

        $this->load->view('_parts/admin_/header.php');
        $this->load->view('_parts/admin_/loader.php');
        $this->load->view('_parts/admin_/navbar.php');
        $this->load->view('_parts/admin_/sidebar.php');
        $this->load->view('admin/news_add.php', $data);
        $this->load->view('_parts/admin_/script.php');
    }

    public function add_news()
    {
        $post = $this->input->post();
        if($post['title']){

            $config['upload_path']          = 'upload/data_img';
            $config['allowed_types']        = 'jpg|png';
            $config['max_size']             = 0;
            $config['max_width']            = 1920;
            $config['max_height']           = 1080;
            $config['file_name']            = $post['title'];

            $this->load->library('upload', $config);

            if(!$this->upload->do_upload('image')){
                $this->session->set_flashdata('alert', $this->upload->display_errors());
                redirect('operator/news');
            }
            else {

                $fileExt = pathinfo($_FILES["image"]["name"], PATHINFO_EXTENSION);

                $prov = $this->m_user->check_user(array('id' => $this->session->userdata('username')))->row();
    
                $data = array(
                    'name' => $post['title'],
                    'section' => $post['description'],
                    'image' => preg_replace('/\s+/', '_', $config['file_name']).'.'.$fileExt,
                    'user_id' => $this->session->userdata('username'),
                    'province_id' => ($prov->province_id <= 0) ? 2 : $prov->province_id,
                    'date' => date('Y-m-d H:i:s')
                );    

                if($this->m_news->insert_new($data)){
                    $this->session->set_flashdata('alert', 'Berhasil Menambah Berita');
                    redirect('operator/news');
                }
                else {
                    $this->session->set_flashdata('alert', 'Gagal Menambah Berita');
                    redirect('operator/news');
                }
            }


        }
        else {
            redirect(base_url('operator/news'));
        }
    }

    public function update_news()
    {
        $post = $this->input->post();

        if($post['title']){
            $data = array(
                'name' => $post['title'],
                'section' => $post['description'],
                'user_id' => $this->session->userdata('username'),
            );    

            if($_FILES['image']['name']) {
                $config['upload_path']          = 'upload/data_img';
                $config['allowed_types']        = 'jpg|png';
                $config['max_size']             = 0;
                $config['max_width']            = 1920;
                $config['max_height']           = 1080;
                $config['file_name']            = $post['title'];
                
                $this->load->library('upload', $config);
                
                
                if(!$this->upload->do_upload('image')){
                        $this->session->set_flashdata('alert', $this->upload->display_errors());
                        redirect('operator/news');
                    }
                    else{
                        $fileExt = pathinfo($_FILES["image"]["name"], PATHINFO_EXTENSION);
                        $data['image'] =  preg_replace('/\s+/', '_', $config['file_name']).'.'.$fileExt;
                        unlink('upload/data_img/'.$post['image_name']);
                    }
            }

            if($this->m_news->update_old($data, $post['id'])){
                $this->session->set_flashdata('alert', 'Berhasil Menambah Berita');
                redirect('operator/news');
            }
            else {
                $this->session->set_flashdata('alert', 'Gagal Menambah Berita');
                redirect('operator/news');
            }
        }
        else {
            redirect(base_url('operator/news'));
        }
    }

    public function delete_news()
    {
        $post = $this->input->post();

        $filename = $this->m_news->get_filename($post['id'])->result();

        foreach ($filename as $f){  
            $pathimg = 'upload/data_img/'.$f->image;
            unlink($pathimg);
        }

        if($this->m_news->delete_batch($post['id'])){
            $this->session->set_flashdata('alert', 'Berhasil Menghapus Postingan');
            redirect('operator/news');
        };
    }
}