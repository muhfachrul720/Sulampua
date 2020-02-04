<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Landing extends Admin_Controller {

	public function __construct()
	{
        parent::__construct();
        $this->load->model('admin/m_landing');
    }

    // Graph
    public function display_graph()
    {
        $data['graph'] = $this->m_landing->get_graph()->result();
        
        $this->load->view('_parts/admin_/header.php');
        $this->load->view('_parts/admin_/loader.php');
        $this->load->view('_parts/admin_/navbar.php');
        $this->load->view('_parts/admin_/sidebar.php');
        $this->load->view('admin/graph_management', $data);
        $this->load->view('_parts/admin_/script.php', $data['gresult']);
    }

    public function update_graph()
    {
        $p = $this->input->post();

        $i = -1;
        foreach($p['id'] as $s) {
            $i++;
            
            $data = array(
                'name' => $p['title'][$i],
                'prov_kalsel' => $p['prov1'][$i],
                'prov_kalteng' => $p['prov2'][$i],
                'prov_kaltim' => $p['prov3'][$i],
                'prov_kalut' => $p['prov4'][$i],
                'prov_kalbar' => $p['prov5'][$i],
                'prov_sulut' => $p['prov6'][$i],
                'prov_sulteng' => $p['prov7'][$i],
                'prov_sulsel' => $p['prov8'][$i],
                'prov_sultra' => $p['prov9'][$i],
                'prov_gorontalo' => $p['prov10'][$i],
                'prov_sulbar' => $p['prov11'][$i],
                'prov_maluku' => $p['prov12'][$i],
                'prov_papua' => $p['prov13'][$i],
                'prov_papua_barat' => $p['prov14'][$i],
                'date' => date('Y-m-d H:i:s')
            );

            $this->m_landing->update_old($data, $s);
        }

        redirect('admin/landing/display_graph');
    }

    // Banner
    public function banner()
    {
       
    }

}