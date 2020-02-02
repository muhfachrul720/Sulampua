<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_books extends CI_Model {

    protected $table_name = 'table_books';

    public function __construct()
    {
        parent::__construct();
    }

    public function display_books($number = null, $offset=0, $where=null, $like = null)
    {
        $this->db->select('u.id as uid, u.username as uname, n.id as nid, n.name as nname, n.link as nlink, n.description as ndesc');
        $this->db->from($this->table_name.' as n');
        $this->db->join('table_user as u', 'n.user_id = u.id');

        if($where != null) {
            $this->db->where($where);
        }

        if($like != null) {
            $this->db->like('n.name', $like);
        }

        $this->db->limit($number, $offset);
        $this->db->order_by('n.id', 'DESC');
        return $this->db->get();    
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
        $this->db->select('id, name, link, description');
        $this->db->where('id', $where);
        return $this->db->get($this->table_name);
    }

    public function update_old($data, $where)
    {
        $this->db->where('id', $where);
        return $this->db->update($this->table_name, $data);
    }
}