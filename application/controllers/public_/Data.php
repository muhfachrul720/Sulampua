<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Data extends MY_Controller {

	private $data = array('user' => 1);

	public function __construct()
	{
		parent::__construct();
		$this->load->model('admin/m_categories');
		$this->load->model('admin/m_posting');
		$this->load->model('admin/m_file');
		$this->load->model('admin/m_indikator');
	}

	public function index()
	{
		$data['cat'] = $this->m_categories->display_categories()->result();

		$this->load->view('_parts/public_/header');
		$this->load->view('_parts/public_/navbar', $this->data);
		$this->load->view('public/data/halaman_data', $data);
		$this->load->view('_parts/public_/footer');
		$this->load->view('_parts/public_/script');
	}

	public function fetch_post()
	{
		$output = '';
		$id = $this->input->post('id');
		
		$total = $this->m_posting->total_row()->num_rows();
		$from = $this->input->post('from');
		$like = $this->input->post('keyword');

        $this->pagination->initialize($this->pagination($total));

		$data = $this->m_posting->get_bycategories($id, 5, $from, $like);

		// Post
		$output .= '<table style="width:100%">
		<tr>
		<th width="70%">Judul Table</th>
		<th width="50%">Tahun Data</th>
		</tr>';
		if($data->num_rows() > 0)
		{
			foreach($data->result() as $row){
				$output .= '<tr>
				<td><a href="'.base_url().'public_/data/tampil_data/'.$row->id.'">'.$row->name.'</a></td>
										<td>2015, 2016, 2017, 2018, 2019<td>
										</tr>';
									}
								}
								else {
									$output .= '<tr>
									<td colspan="2">No Data Found</td>
									</tr>';
		}

		$output .= '</table><br>'.$this->pagination->create_links();
		
		echo $output;
		
	}
	

	
	public function fetch_idk()
	{
		$output = '';
		$id = $this->input->post('id');
		$dataidk = $this->m_indikator->get_idk($id);	
		
		// Idk
		$output .= '<table class="w-100">
		<tr>
		<th width="20%">Indikator</th>
		</tr>';
		if($dataidk->num_rows() > 0)
		{
			foreach($dataidk->result() as $res){
				$output .= ' <tr>
										<td>'.$res->name.'</td>
										<td>'.$res->description.'</td>
									</tr>';
			}
		}
		else {
			$output .= '<tr>
								<td colspan="2">No Data Found</td>
								</tr>';
		}

		$output .= '</table>';

		echo $output;
	}


	public function tampil_data($id)
	{
		$data['detail'] = $this->m_file->display_data($id)->result();
		$data['file'] = $this->m_posting->get_byid($id)->row();

		$this->load->view('_parts/public_/header');
		$this->load->view('_parts/public_/navbar', $this->data);
		$this->load->view('public/data/detail_data',$data);
		$this->load->view('_parts/public_/footer');
		$this->load->view('_parts/public_/script');
	}

	private function pagination($total)
	{
		$config['base_url'] = base_url('public_/data/index/');
        $config['total_rows'] = $total;
		$config['per_page'] = 5;
		$config['first_link']       = 'First';
        $config['last_link']        = 'Last';
        $config['next_link']        = 'Next';
        $config['prev_link']        = 'Prev';
        $config['full_tag_open']    = '<div class="pagging text-center"><nav><ul class="pagination justify-content-center">';
        $config['full_tag_close']   = '</ul></nav></div>';
        $config['num_tag_open']     = '<li class="page-item"><span class="page-link">';
        $config['num_tag_close']    = '</span></li>';
		$config['cur_tag_open']     = '<li class="page-item active"><span class="page-link" style="border-color:rgb(245,245,245);"><a href="'.base_url('public_/data').'">';
		$config['cur_tag_close']    = '<span class="sr-only">(current)</span></span></a></li>';
        $config['next_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['next_tagl_close']  = '<span aria-hidden="true">&raquo;</span></span></li>';
        $config['prev_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['prev_tagl_close']  = '</span>Next</li>';
        $config['first_tag_open']   = '<li class="page-item"><span class="page-link">';
        $config['first_tagl_close'] = '</span></li>';
        $config['last_tag_open']    = '<li class="page-item"><span class="page-link">';
		$config['last_tagl_close']  = '</span></li>';
		
		return $config;
	}
}
