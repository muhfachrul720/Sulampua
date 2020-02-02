<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_user extends CI_Model {

    protected $table_name = 'table_user';

    public function __construct()
    {
        parent::__construct();
    }

    public function get_userprov($where)
    {
        $this->db->select('id');
        $this->db->where('province_id', $where);
        return $this->db->get($this->table_name);
    }

    public function check_user($where)
    {   
        return $this->db->get_where($this->table_name, $where);
    }

    public function display_user($number, $offset, $like = null)
    {
        if($like != null){
            $this->db->like('username', $like);
        }
        return $this->db->get($this->table_name, $number, $offset);
    }

    public function insert_newuser($data)
    {
        return $this->db->insert($this->table_name, $data);
    }

    public function total_user()
    {
        $this->db->select('id');
        $this->db->from($this->table_name);
        return $this->db->get();
    }

    public function delete_batch($data)
    {
        $this->db->where_in('id', $data);
        return $this->db->delete($this->table_name);
    }

    public function get_individual($where)
    {
        $this->db->select('u.username as uname, u.password as upass, u.status as ustatus, p.name as pname, p.id as pid');
        $this->db->from($this->table_name.' as u');
        $this->db->join('table_province as p', 'u.province_id = p.id');
        $this->db->where('u.id', $where);
        return $this->db->get();
    }

    public function update_user($data, $where)
    {
        $this->db->where('id', $where);
        return $this->db->update($this->table_name, $data);
    }

}