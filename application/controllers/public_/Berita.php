<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Berita extends MY_Controller {

    public function __construct()
	{
        parent::__construct();
        $this->load->model('admin/m_news');
	}

    public function index()
    {
        $data['user'] = 1;

        $total = $this->m_news->total_row()->num_rows();
        $from = $this->uri->segment(4);
        $this->pagination->initialize(cs_pagination('public_/berita/index', $total, 5));

        $data['news'] = $this->m_news->display_news(5, $from, null, $this->input->post('search'))->result();
        $data['latestnews'] = $this->m_news->display_news(3, $from)->result();
        
        $this->load->view('_parts/public_/header');
		$this->load->view('_parts/public_/navbar', $data);
        $this->load->view('public/berita/berita.php', $data);
		$this->load->view('_parts/public_/footer');
		$this->load->view('_parts/public_/script');
    }
    
    public function detail_berita($id)
    {
        $data['user'] = 1;

        $data['news'] = $this->m_news->get_dataindividual($id)->row();

        $this->load->view('_parts/public_/header');
		$this->load->view('_parts/public_/navbar', $data);
        $this->load->view('public/berita/detail_berita.php');
		$this->load->view('_parts/public_/footer');
		$this->load->view('_parts/public_/script');
    }
}