<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MY_Controller extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->helper('pagination');
    }
}

class Admin_Controller extends MY_Controller {

    public function __construct()
    {
        parent::__construct();
        if($this->session->userdata('status') != 1){
            redirect('backend');
        }   
    }

    public function viewLoad($file, $data = null)
    {
        
        $this->load->view('_parts/admin_/header.php');
        $this->load->view('_parts/admin_/loader.php');
        $this->load->view('_parts/admin_/navbar.php');
        $this->load->view('_parts/admin_/sidebar.php');
        $this->load->view($file, $data);
        $this->load->view('_parts/admin_/modal.php');
        $this->load->view('_parts/admin_/script.php');
    }

}

class User_Controller extends MY_Controller {

    public function __construct()
    {
        parent::__construct();
        if($this->session->userdata('status') == 3 || $this->session->userdata('status') == null){
            redirect('backend');
        }
    }

}

class Operator_Controller extends MY_Controller {

    public function __construct()
    {
        parent::__construct();
        if($this->session->userdata('status') == null){
            redirect('backend');
        }   
    }
    
}
