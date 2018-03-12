<?php
class M_tipeversi extends CI_Model{	
	function __construct(){
		parent::__construct();		
	}

	function ambil_versi_id($id_versi){
		$sql = "SELECT *
				FROM versi
				WHERE id = ?";
		$query = $this->db->query($sql, array($id_versi));
		$row = $query->row();

		return $row;
	}


	function ambil_tipeversi($id_versi){
		$sql = "SELECT *
				FROM tipeversi
				WHERE versi_id = ?";
		$query = $this->db->query($sql, array($id_versi));
		$row = $query->result();

		return $row;
	}

	function ambil_data_type($id){
		$sql = "SELECT *
				FROM tipeversi
				WHERE id = ?";
		$query = $this->db->query($sql, array($id));
		$row = $query->row();

		return $row;
	}

	function tambah_type($type, $id){
		$sql = "INSERT INTO tipeversi
				SET tipe = ?,
				versi_id = ? ";
		$query = $this->db->query($sql, array($type, $id));
	}	

	function ubah_type($type, $id){
		$sql = "UPDATE tipeversi
				SET tipe = ?
				WHERE id = ?";
		$query = $this->db->query($sql, array($type, $id));
	}	

	function aksi_hapus($id){
		$sql = "DELETE FROM tipeversi
				WHERE id = ?";
		$query = $this->db->query($sql, array($id));
	}	

	function ambil_data_versi_dari_id_tipeversi($id_tipeversi){
		$sql = "SELECT *
				FROM v_versitipe
				WHERE id_tipeversi = ?";
		$query = $this->db->query($sql, array($id_tipeversi));
		$row = $query->row();

		return $row;
	}

}
?>