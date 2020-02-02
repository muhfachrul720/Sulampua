<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends User_Controller {

	public function __construct()
	{
		parent::__construct();
    }

    public function index()
    {
        $this->load->view('_parts/admin_/header.php');
        $this->load->view('_parts/admin_/loader.php');
        $this->load->view('_parts/admin_/navbar.php');
        $this->load->view('_parts/admin_/sidebar.php');
        $this->load->view('_parts/admin_/dashboard.php');
        $this->load->view('_parts/admin_/script.php');
    }

}