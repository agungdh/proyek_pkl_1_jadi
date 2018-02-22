<?php
class M_listdokumen extends CI_Model{	
	function __construct(){
		parent::__construct();		
	}

	function ambil_data_butir_dari_id_listdokumen($id_listdokumen){
		$sql = "SELECT *
				FROM v_listdokumen
				WHERE id_listdokumen = ?";
		$query = $this->db->query($sql, array($id_listdokumen));
		$row = $query->row();

		return $row;
	}

	function ambil_listdokumen($id_butir){
		$sql = "SELECT *
				FROM listdokumen
				WHERE butir_id = ?";
		$query = $this->db->query($sql, array($id_butir));
		$row = $query->result();

		return $row;
	}

	function ambil_versi(){
		$sql = "SELECT *
				FROM versi";
		$query = $this->db->query($sql, array());
		$row = $query->result();

		return $row;
	}

	function ambil_standar_id($id_standar){
		$sql = "SELECT *
				FROM standar
				WHERE id = ?";
		$query = $this->db->query($sql, array($id_standar));
		$row = $query->row();

		return $row;
	}

	function ambil_butir_id($id_butir){
		$sql = "SELECT *
				FROM butir
				WHERE id = ?";
		$query = $this->db->query($sql, array($id_butir));
		$row = $query->row();

		return $row;
	}

	function ambil_listdokumen_id($id_listdokumen){
		$sql = "SELECT *
				FROM listdokumen
				WHERE id = ?";
		$query = $this->db->query($sql, array($id_listdokumen));
		$row = $query->row();

		return $row;
	}

	function tambah_listdokumen($keterangan, $id_butir){
		$sql = "INSERT INTO listdokumen
				SET keterangan = ?,
				butir_id = ?";
		$query = $this->db->query($sql, array($keterangan, $id_butir));
	}	

	function ubah_listdokumen($keterangan, $id){
		$sql = "UPDATE listdokumen
				SET keterangan = ?
				WHERE id = ?";
		$query = $this->db->query($sql, array($keterangan, $id));
	}	

	function hapus_listdokumen($id){
		$sql = "DELETE FROM listdokumen
				WHERE id = ?";
		$query = $this->db->query($sql, array($id));
	}	

}
?>