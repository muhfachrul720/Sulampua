<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_landing extends CI_Model {

    protected $table_graph = 'table_graph';

    public function __construct()
    {
        parent::__construct();
    }

    // Graph
    public function get_graph()
    {
        return $this->db->get($this->table_graph);
    }

    public function update_old($data, $where)
    {
        $this->db->where('id', $where);
        return $this->db->update($this->table_graph, $data);
    }

}