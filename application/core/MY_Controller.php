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
