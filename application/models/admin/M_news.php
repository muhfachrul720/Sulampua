<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_news extends CI_Model {

    protected $table_name = 'table_news';

    public function __construct()
    {
        parent::__construct();
    }

    public function display_news($number = null, $offset=0, $where=null, $like = null)
    {
        $this->db->select('u.id as uid, u.username as uname, n.id as nid, n.name as nname, n.image as nimg, n.date as ndate, n.section as nsect');
        $this->db->from($this->table_name.' as n');
        $this->db->join('table_user as u', 'n.user_id = u.id');

        if($where != null) {
            $this->db->where($where);
        }

        if($like != null) {
            $this->db->like('n.name', $like);
        }

        $this->db->limit($number, $offset);
        $this->db->order_by('ndate', 'DESC');
        return $this->db->get();    
    }

    public function insert_new($data)
    {
        return $this->db->insert('table_news', $data);
    }

    public function total_row()
    {
        $this->db->select('id');
        $this->db->from($this->table_name);
        return $this->db->get();
    }

    public function get_filename($data)
    {   
        $this->db->select('image');
        $this->db->where_in('id', $data);
        return $this->db->get($this->table_name);
    }

    public function delete_batch($data)
    {
        $this->db->where_in('id', $data);
        return $this->db->delete($this->table_name);
    }

    public function get_dataindividual($where)
    {
        $this->db->select('id, name, section, image');
        $this->db->where('id', $where);
        return $this->db->get($this->table_name);
    }

    public function update_old($data, $where)
    {
        $this->db->where('id', $where);
        return $this->db->update($this->table_name, $data);
    }
}