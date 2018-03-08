<?php
class M_type extends CI_Model{	
	function __construct(){
		parent::__construct();		
	}

	function ambil_type(){
		$sql = "SELECT *
				FROM type_listdokumen";
		$query = $this->db->query($sql, array());
		$row = $query->result();

		return $row;
	}

	function ambil_data_type($id){
		$sql = "SELECT *
				FROM type_listdokumen
				WHERE id_type = ?";
		$query = $this->db->query($sql, array($id));
		$row = $query->row();

		return $row;
	}

	function tambah_type($type){
		$sql = "INSERT INTO type_listdokumen
				SET type = ? ";
		$query = $this->db->query($sql, array($type));
	}	

	function ubah_type($type, $id){
		$sql = "UPDATE type_listdokumen
				SET type = ?
				WHERE id_type = ?";
		$query = $this->db->query($sql, array($type, $id));
	}	

	function aksi_hapus($id){
		$sql = "DELETE FROM type_listdokumen
				WHERE id_type = ?";
		$query = $this->db->query($sql, array($id));
	}	

}
?>