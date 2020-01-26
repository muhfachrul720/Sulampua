<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_categories extends CI_Model {

    protected $table_name = 'table_categories';

    public function __construct()
    {
        parent::__construct();
    }

    public function display_categories($number = null, $offset=0)
    {
        return $this->db->get($this->table_name, $number, $offset);
    }

    public function total_row()
    {
        $this->db->select('id');
        $this->db->from($this->table_name);
        return $this->db->get();
    }

    public function insert_new($data)
    {
        return $this->db->insert($this->table_name, $data);
    }

    public function delete_batch($data)
    {
        $this->db->where_in('id', $data);
        return $this->db->delete($this->table_name);
    }

    public function get_individual($where)
    {
        $this->db->select('name, description');
        $this->db->where('id', $where);
        $this->db->from($this->table_name);
        return $this->db->get();
    }

    public function update_old($data, $where)
    {
        $this->db->where('id', $where);
        return $this->db->update($this->table_name, $data);
    }
}