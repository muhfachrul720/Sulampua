<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function index()
	{	
		$this->load->view('_parts/public_/header');
		$this->load->view('_parts/public_/navbar');
		$this->load->view('landing');
		$this->load->view('_parts/public_/footer');
		$this->load->view('_parts/public_/script');
		
	}
}
