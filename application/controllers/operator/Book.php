<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Book extends Operator_Controller {

	public function __construct()
	{
        parent::__construct();
        $this->load->model('admin/m_books');
        $this->load->model('admin/m_user');
	}
	
	public function index()
    {
        // Pagination 
        $total = $this->m_books->total_row()->num_rows();
        $from = $this->uri->segment(4);
        $this->pagination->initialize(cs_pagination('admin/dt_kasulampua/post', $total, 10));

        $row = $this->m_user->check_user(array('id' => $this->session->userdata('username')))->row();

        $status = $this->session->userdata('status');
        if($status == 1){
            $data['books'] = $this->m_books->display_books(10, $from)->result(); 
        } else if ($status == 2){
            $data['books'] = $this->m_books->display_books(10, $from, array('n.province_id' => $row->province_id))->result(); 
        } else {
            $data['books'] = $this->m_books->display_books(10, $from, array('n.user_id' => $this->session->userdata('username')))->result(); 
        }

        $this->load->view('_parts/admin_/header.php');
        $this->load->view('_parts/admin_/loader.php');
        $this->load->view('_parts/admin_/navbar.php');
        $this->load->view('_parts/admin_/sidebar.php');
        $this->load->view('admin/books_publish.php', $data);
        $this->load->view('_parts/admin_/modal.php');
        $this->load->view('_parts/admin_/script.php');
    }

    public function add_books()
    {
        $this->form_validation->set_rules('name', 'name', 'required');
        $this->form_validation->set_rules('link', 'name', 'required');

        if(!$this->form_validation->run()){
            $this->session->set_flashdata('alert', 'Gagal Menambah Buku Publikasi');
            redirect('operator/book');
        }
        else {
           $post = $this->input->post();

           $prov = $this->m_user->check_user(array('id' => $this->session->userdata('username')))->row();

           $data = array(
               'name' => $post['name'],
               'link' => $post['link'],
               'description' => $post['desc'],
               'user_id' => $this->session->userdata('username'),
               'province_id' => $prov->province_id
            );

            if($this->m_books->insert_new($data)){
                $this->session->set_flashdata('alert', 'Berhasil Menambah List Buku');
                redirect('operator/book');
            }
            else {
                $this->session->set_flashdata('alert', 'Gagal Menambah List Buku');
                redirect('operator/book');
            }
        }

    }

    public function delete_books()
    {
        $post = $this->input->post();

        if($this->m_books->delete_batch($post['id'])){
            $this->session->set_flashdata('alert', 'Berhasil Menghapus Postingan');
            redirect('operator/book');
        }else {
            $this->session->set_flashdata('alert', 'Gagal Menghapus Postingan');
            redirect('operator/book');
        } 
    }

    public function get_data_individual()
    {
        $post = $this->input->post();
        if($result = $this->m_books->get_individual($post['id'])->result()){

            foreach ($result as $res){
              $dataid = array(
                  'Title' => $res->name,
                  'Link' => $res->link,
                  'Desc' => $res->description,
              );
            }
            
            echo json_encode($dataid);
        }
    }

    public function update_books()
    {
        $this->form_validation->set_rules('name', 'name', 'required');
        $this->form_validation->set_rules('link', 'name', 'required');

        if(!$this->form_validation->run()){
            $this->session->set_flashdata('alert', 'Gagal Menambah Buku Publikasi');
            redirect('operator/book');
        }
        else {
           $post = $this->input->post();

           $data = array(
               'name' => $post['name'],
               'link' => $post['link'],
               'description' => $post['desc'],
            );

            if($this->m_books->update_old($data, $post['id'])){
                $this->session->set_flashdata('alert', 'Berhasil Menambah List Buku');
                redirect('operator/book');
            }
            else {
                $this->session->update_old('alert', 'Gagal Menambah List Buku');
                redirect('operator/book');
            }
        }

    }


}