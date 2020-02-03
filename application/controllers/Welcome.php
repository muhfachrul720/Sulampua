<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('admin/m_news');
	}

	public function index()
	{	
		$data['presult'] = $this->m_news->display_news(3)->result();
		
		$this->load->view('_parts/public_/header');
		$this->load->view('_parts/public_/navbar');
		$this->load->view('landing', $data);
		$this->load->view('_parts/public_/footer');
		$this->load->view('_parts/public_/script');
		
	}
}
