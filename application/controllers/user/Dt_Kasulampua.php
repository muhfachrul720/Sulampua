<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dt_Kasulampua extends User_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('admin/m_categories');
        $this->load->model('admin/m_posting');
        $this->load->model('admin/m_user');
        $this->load->model('admin/m_file');
        $this->load->library('excel');
    }

    public function index()
    {
        redirect('admin/dt_kasulampua/post');
    }

    public function post()
    {   
        
        // Pagination 
        $total = $this->m_posting->total_row()->num_rows();
        $from = $this->uri->segment(4);
        $this->pagination->initialize(cs_pagination('admin/dt_kasulampua/post', $total, 10));
        
        // List Categories
        $data['categories'] = $this->m_categories->display_categories()->result();
        
        // List Post
        $row = $this->m_user->check_user(array('id' => $this->session->userdata('username')))->row();
        
        $status = $this->session->userdata('status');
        if($status == 1){
            $data['post'] = $this->m_posting->display_post(10, $from, null, $this->input->post('search'))->result(); 
        } else if ($status == 2){
            $data['post'] = $this->m_posting->display_post(10, $from, $row->province_id, $this->input->post('search'))->result(); 
        }
        $this->load->view('_parts/admin_/header.php');
        $this->load->view('_parts/admin_/loader.php');
        $this->load->view('_parts/admin_/navbar.php');
        $this->load->view('_parts/admin_/sidebar.php');
        $this->load->view('admin/data_posting', $data);
        $this->load->view('_parts/admin_/script.php');
    }

    // POSTINGAN
    public function add_post()
    {
        $post = $this->input->post();
        $this->form_validation->set_rules('name', 'Title', 'required');

        if($this->form_validation->run() == FALSE){
            $this->session->set_flashdata('alert', 'Gagal Menambah Postingan');
            redirect('admin/dt_kasulampua/post');
        }
        else {
            if($post['cat'] == 0) {
                $this->session->set_flashdata('alert', 'Menambah Postingan Harus Memilih Kategori');
                redirect('admin/dt_kasulampua/post');
            }
            else {
                $prov = $this->m_user->check_user(array('id' => $post['user_id']))->row();

                $data = array(
                    'name' => $post['name'],
                    'description' => $post['desc'],
                    'categories_id' => $post['cat'],
                    'date' =>  $post['date'],
                    'user_id' => $post['user_id'],
                    'province_id' => $prov->province_id,
                );

                if($this->m_posting->insert_new($data)) {
                    $this->session->set_flashdata('alert', 'Berhasil Menambah Postingan');
                    redirect('user/dt_kasulampua/post');
                }
                else {
                    $this->session->set_flashdata('alert', 'Gagal Menambah Postingan');
                    redirect('user/dt_kasulampua/post');
                }
            }
        }
    }

    public function update_post()
    {
        $post = $this->input->post();

        $this->form_validation->set_rules('name', 'Title', 'required');

        if($this->form_validation->run() == FALSE){
            $this->session->set_flashdata('alert', 'Gagal Menambah Postingan');
            redirect('admin/dt_kasulampua/post');
        }
        else {
            $data = array(
                'name' => $post['name'],
                'description' => $post['desc'],
                'categories_id' => $post['cat'],
                'date' =>  $post['date'],
                'user_id' => $post['user_id'],
                'status' => $post['file_id']
            );

            if($this->m_posting->update_old($data, $post['id'])) {
                $this->session->set_flashdata('alert', 'Berhasil Menambah Postingan');
                redirect('user/dt_kasulampua/post');
            }
            else {
                $this->session->set_flashdata('alert', 'Gagal Menambah Postingan');
                redirect('user/dt_kasulampua/post');
            }
        }
    }

    public function delete_post()
    {
        $post = $this->input->post();

        $filename = $this->m_posting->get_filename($post['id'])->result();

        foreach ($filename as $f){
            $pathxl = 'upload/data_excel/'.$f->file_name;
            $pathimg = 'upload/data_img/'.$f->file_img;
            unlink($pathxl);
            unlink($pathimg);
        }

        if($this->m_posting->delete_batch($post['id'])){
            $this->m_file->delete_batch($post['id']);

            $this->session->set_flashdata('alert', 'Berhasil Menghapus Postingan');
            redirect('user/dt_kasulampua/post');
        };
    }

    public function get_data_individual()
    {
        $post = $this->input->post();
        if($result = $this->m_posting->get_individual($post['id'])->result()){
            foreach ($result as $res){
                $data = array(
                    'Title' => $res->name,
                    'Desc' => $res->description,
                    'Cat' => $res->categories_id,
                    'File' => $res->status,
                );
            }

            echo json_encode($data);
        }
    }

    // FILE UPLOAD
    public function file($postid = 0)
    {   
        $result = $this->m_posting->check_file_id($postid)->row();

        $data = array(
            'result' => $this->m_file->display_data($postid)->result(),
            'titledata' => $result->name,
            'postid' => $postid
        );
        
        if($data['result'] != NULL) {
            $data['check'] = 1;
        }
        else {
            $data['check'] = 0;
        }

        // $row = $this->m_posting->check_file_id($postid)->row(); 

        $this->load->view('_parts/admin_/header.php');
        $this->load->view('_parts/admin_/loader.php');
        $this->load->view('_parts/admin_/navbar.php');
        $this->load->view('_parts/admin_/sidebar.php');
        $this->load->view('admin/file_archive', $data);
        $this->load->view('_parts/admin_/script.php');
    }

    public function do_upload()
    {
            $config['upload_path']          = 'upload/data_excel';
            $config['allowed_types']        = 'xls|xlsx';
            $config['max_size']             = 100;
            $config['max_width']            = 1024;
            $config['max_height']           = 768;
            $config['file_name']            = 'db'.$this->input->post('postid');

            $this->load->library('upload', $config);

            if (!$this->upload->do_upload('userfile'))
            {   
                $this->session->set_flashdata('alert', $this->upload->display_errors());
                redirect('admin/dt_kasulampua/file/'.$this->input->post('postid'));
            }
            else
            {
                $fileExt = pathinfo($_FILES["userfile"]["name"], PATHINFO_EXTENSION);
                $path = $_FILES["userfile"]["tmp_name"];

                $data = $this->import_excel($path, $this->input->post('postid'));

                if($this->m_file->insert_new($data)) {
                    
                    $status = array(
                        'status' => 1,
                        'file_name' => $config['file_name'].'.'.$fileExt
                    );
                    
                    $this->m_posting->update_status($status, $this->input->post('postid'));

                    $this->session->set_flashdata('alert', 'Berhasil Mengupload File');
                    redirect('admin/dt_kasulampua/file/'.$this->input->post('postid'));
                }
                else {
                    $this->session->set_flashdata('alert', 'Gagal Mengupload File');
                    redirect('admin/dt_kasulampua/file/'.$this->input->post('postid'));
                }
            }
    }

    public function change_file()
    {
        $config['upload_path']          = 'upload/data_excel';
        $config['allowed_types']        = 'xls|xlsx';
        $config['max_size']             = 100;
        $config['max_width']            = 1024;
        $config['max_height']           = 768;
        $config['overwrite']            = TRUE;
        $config['file_name']            = 'db'.$this->input->post('postid');

        $this->load->library('upload', $config);

        if (!$this->upload->do_upload('userfile')) 
        {   
            $this->session->set_flashdata('alert', $this->upload->display_errors());
            redirect('admin/dt_kasulampua/file/'.$this->input->post('postid'));
        }
        else
        {
            $path = $_FILES["userfile"]["tmp_name"];

            $data = $this->import_excel($path, $this->input->post('postid'));

            $this->m_file->delete_batch($this->input->post('postid'));

            if($this->m_file->insert_new($data)) {
                
                $status = array(
                    'status' => 1,
                );
                
                $this->m_posting->update_status($status, $this->input->post('postid'));

                $this->session->set_flashdata('alert', 'Berhasil Mengupload File');
                redirect('admin/dt_kasulampua/file/'.$this->input->post('postid'));
            }
            else {
                $this->session->set_flashdata('alert', 'Gagal Mengupload File');
                redirect('admin/dt_kasulampua/file/'.$this->input->post('postid'));
            }
        }

    }

    function import_excel($path, $post_id)
    {
        $object = PHPExcel_IOFactory::load($path);
                foreach($object->getWorksheetIterator() as $worksheet){
                    $highestRow = $worksheet->getHighestRow();
                    $highestColumn = $worksheet->getHighestColumn();
                    for ($row=4; $row<=$highestRow; $row++){
                        $province = $worksheet->getCellByColumnAndRow(0, $row)->getValue();
                        $y2014 = $worksheet->getCellByColumnAndRow(1, $row)->getValue();
                        $y2015 = $worksheet->getCellByColumnAndRow(2, $row)->getValue();
                        $y2016 = $worksheet->getCellByColumnAndRow(3, $row)->getValue();
                        $y2017 = $worksheet->getCellByColumnAndRow(4, $row)->getValue();
                        $y2018 = $worksheet->getCellByColumnAndRow(4, $row)->getValue();
                        $y2019 = $worksheet->getCellByColumnAndRow(4, $row)->getValue();
                        $data[] = array(
                            'province' => $province,
                            'tahun_2014' => $y2014,
                            'tahun_2015' => $y2015,
                            'tahun_2016' => $y2016,
                            'tahun_2017' => $y2017,
                            'tahun_2018' => $y2018,
                            'tahun_2019' => $y2019,
                            'post_id' => $post_id
                        );
                    };
                }

        return $data;
    }

}