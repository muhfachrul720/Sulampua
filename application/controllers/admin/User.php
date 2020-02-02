<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends Admin_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('admin/m_user');
        $this->load->model('admin/m_province');
    }
    
    function index()
    {
        $total = $this->m_user->total_user()->num_rows();
        $from = $this->uri->segment(4);
        $this->pagination->initialize(cs_pagination('admin/user/index', $total, 10));
        
        $data['user'] = $this->m_user->display_user(10, $from, $this->input->post('search'))->result();
        $data['prov'] = $this->m_province->get_option()->result();
        
        $this->load->view('_parts/admin_/header.php');
        $this->load->view('_parts/admin_/loader.php');
        $this->load->view('_parts/admin_/navbar.php');
        $this->load->view('_parts/admin_/sidebar.php');
        $this->load->view('admin/user_management', $data);
        $this->load->view('_parts/admin_/modal.php');
        $this->load->view('_parts/admin_/script.php');
    }
    
    public function add_user()
    {
        $post = $this->input->post();
        $this->form_validation->set_rules('username', 'Username', 'required');
        $this->form_validation->set_rules('password', 'Password', 'required|min_length[8]|alpha_numeric');
        
        if($this->form_validation->run() == FALSE){
            $this->session->set_flashdata('alert', 'Gagal Menambah User');
            redirect('admin/user');
        }
        else {
            if($post['level'] == 0) $status = 3; else $status = $post['level'];

            $data = array(
                'username' => $post['username'],
                'password' => md5($post['password']),
                'status' => $status,
                'province_id' => $post['province']
            );

            if($this->m_user->insert_newuser($data)) {
                $this->session->set_flashdata('alert', 'Berhasil Menambah User');
                redirect('admin/user');
            }
            else {
                $this->session->set_flashdata('alert', 'Gagal Menambah User');
                redirect('admin/user');
            }
        }
    }
    
    public function delete_user()
    {
        $post = $this->input->post();
        
        if($this->m_user->delete_batch($post['id'])){
            $this->session->set_flashdata('alert', 'Berhasil Menghapus User');
            redirect('admin/user');
        };
    }
    
    public function update_user()
    {
        $post = $this->input->post();

        $this->form_validation->set_rules('username', 'Username', 'required');
        $this->form_validation->set_rules('password', 'Password', 'required|min_length[8]|alpha_numeric');

        if($this->form_validation->run() == FALSE){
            $this->session->set_flashdata('alert', 'Gagal Menambah User');
            redirect('admin/user');
        }
        else {
            if($post['level'] == 0) $status = 3; else $status = $post['level'];
            
            $data = array(
                'username' => $post['username'],
                'password' => $post['password'],
                'status' => $status,
                'province_id' => $post['province']
            );

            if($this->m_user->update_user($data, $post['id'])){
                $this->session->set_flashdata('alert', 'Berhasil Mengupdate User');
                redirect('admin/user');
            }
        }
    }

    public function get_data_individual()
    {
        $post = $this->input->post();
        if($result = $this->m_user->get_individual($post['id'])->result()){
            foreach ($result as $res){
                $data = array(
                    'Username' => $res->uname,
                    'Password' => $res->upass,
                    'Status' => $res->ustatus,
                    'ProvId' => $res->pid
                );
            }
            
            // var_dump($data);
            echo json_encode($data);
        }
    }
    
}