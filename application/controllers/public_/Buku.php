<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Buku extends MY_Controller {

    public function __construct()
	{
        parent::__construct();
        $this->load->model('admin/m_books');
	}

    public function index()
    {
        $data['user'] = 1;  
        
        $total = $this->m_books->total_row()->num_rows();
        $from = $this->uri->segment(4);
        $this->pagination->initialize(cs_pagination('public_/buku/index', $total, 15));
        
        $data['buku'] = $this->m_books->display_books(15, $from, null, $this->input->post('search'))->result();

        $this->load->view('_parts/public_/header');
		$this->load->view('_parts/public_/navbar', $data);
        $this->load->view('public/buku/buku.php');
		$this->load->view('_parts/public_/footer');
		$this->load->view('_parts/public_/script');
    }
}