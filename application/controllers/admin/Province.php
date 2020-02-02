<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Province extends Admin_Controller {

	public function __construct()
	{
        parent::__construct();
        $this->load->model('admin/m_province');
    }

    public function index()
    {
        $total = $this->m_province->total_row()->num_rows();
        $from = $this->uri->segment(4);
        echo $from;
        $this->pagination->initialize(cs_pagination('admin/user/index', $total, 10));
        
        $data['province'] = $this->m_province->display_province(10, $from)->result();

        $this->load->view('_parts/admin_/header.php');
        $this->load->view('_parts/admin_/loader.php');
        $this->load->view('_parts/admin_/navbar.php');
        $this->load->view('_parts/admin_/sidebar.php');
        $this->load->view('admin/province_management.php', $data);
        $this->load->view('_parts/admin_/modal.php');
        $this->load->view('_parts/admin_/script.php');
    }

    public function update_province()
    {
        $post = $this->input->post();

        $this->form_validation->set_rules('name', 'Province Name', 'required');

        if($this->form_validation->run() == FALSE){
            $this->session->set_flashdata('alert', 'Gagal Menambah Provinsi');
            redirect('admin/province');
        }
        else {
            $data = array(  
                'name' => $post['name'],
            );

            if($this->m_province->update_old($data, $post['id'])){
                $this->session->set_flashdata('alert', 'Berhasil Mengupdate Provinsi');
                redirect('admin/province');
            }
        }
    }

    public function add_province()
    {
        $post = $this->input->post();
        $this->form_validation->set_rules('name', 'Province Name', 'required');
        
        if($this->form_validation->run() == FALSE){
            $this->session->set_flashdata('alert', 'Gagal Menambah Provinsi');
            redirect('admin/province');
        }
        else {
            if($post['level'] == 0) $status = 3; else $status = $post['level'];

            $data = array(
                'name' => $post['name'],
            );

            if($this->m_province->insert_new($data)) {
                $this->session->set_flashdata('alert', 'Berhasil Menambah Provinsi');
                redirect('admin/province');
            }
            else {
                $this->session->set_flashdata('alert', 'Gagal Menambah Provinsi');
                redirect('admin/province');
            }
        }
    }

    public function delete_province()
    {
        $post = $this->input->post();
        
        if($this->m_province->delete_batch($post['id'])){
            $this->session->set_flashdata('alert', 'Berhasil Menghapus User');
            redirect('admin/province');
        };
    }

    public function get_data_individual()
    {
        $post = $this->input->post();
        if($result = $this->m_province->get_individual($post['id'])->result()){
            foreach ($result as $res){
                $data = array(
                    'Name' => $res->name
                );
            }
            
            echo json_encode($data);
        }
    }

}