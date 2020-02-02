<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_province extends CI_Model {

    protected $table_name = 'table_province';

    public function __construct()
    {
        parent::__construct();
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

    public function display_province($number, $offset, $like = null)
    {
        if($like != null){
            $this->db->like('name', $like);
        }
        return $this->db->get($this->table_name, $number, $offset);
    }

    public function update_old($data, $where)
    {
        $this->db->where('id', $where);
        return $this->db->update($this->table_name, $data);
    }

    public function get_individual($where)
    {
        $this->db->select('name');
        $this->db->where('id', $where);
        $this->db->from($this->table_name);
        return $this->db->get();
    }

    public function get_option()
    {
        $this->db->select('id, name');
        return $this->db->get($this->table_name);
    }

    public function delete_batch($data)
    {
        $this->db->where_in('id', $data);
        return $this->db->delete($this->table_name);
    }


}