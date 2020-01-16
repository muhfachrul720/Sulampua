<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Data extends CI_Controller {

	public function index()
	{	
        $data['user'] = 1;
		$this->load->view('_parts/public_/header');
		$this->load->view('_parts/public_/navbar', $data);
		$this->load->view('data_kasulampua');
		$this->load->view('_parts/public_/footer');
		$this->load->view('_parts/public_/script');
	}
}
