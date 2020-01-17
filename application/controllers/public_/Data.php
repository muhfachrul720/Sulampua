<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Data extends CI_Controller {

	private $data = array('user' => 1);

	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{	
		$this->load->view('_parts/public_/header');
		$this->load->view('_parts/public_/navbar', $this->data);
		$this->load->view('data/halaman_data');
		$this->load->view('_parts/public_/footer');
		$this->load->view('_parts/public_/script');
	}

	public function tampil_data()
	{
		$this->load->view('_parts/public_/header');
		$this->load->view('_parts/public_/navbar', $this->data);
		$this->load->view('data/detail_data');
		$this->load->view('_parts/public_/footer');
		$this->load->view('_parts/public_/script');
	}
}
