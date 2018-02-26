<?php
class M_pengajuan extends CI_Model{	
	function __construct(){
		parent::__construct();		
	}

	function ambil_pengajuan($id_user){
		$sql = "SELECT *
				FROM v_pengajuan
				WHERE user_id = ?";
		$query = $this->db->query($sql, array($id_user));
		$row = $query->result();

		return $row;
	}

	function ambil_prodi_dari_id_pengajuan($id_pengajuan){
		$sql = "SELECT p.nama
				FROM pengajuan u, prodi p
				WHERE u.prodi_id = p.id
				AND u.id = ?";
		$query = $this->db->query($sql, array($id_pengajuan));
		$row = $query->row();

		return $row;
	}

	function ambil_versi(){
		$sql = "SELECT *
				FROM versi";
		$query = $this->db->query($sql, array());
		$row = $query->result();

		return $row;
	}

	function ambil_pengajuan_id($id_pengajuan){
		$sql = "SELECT *
				FROM pengajuan
				WHERE id = ?";
		$query = $this->db->query($sql, array($id_pengajuan));
		$row = $query->row();

		return $row;
	}

	function tambah_pengajuan($tanggal, $versi, $user_id){
		$sql = "INSERT INTO pengajuan
				SET tanggal = ?,
				versi_id = ?,
				user_id = ?";
		$query = $this->db->query($sql, array($tanggal, $versi, $user_id));
	}

	function ubah_pengajuan($tanggal, $versi, $id){
		$sql = "UPDATE pengajuan
				SET tanggal = ?,
				versi_id = ?
				WHERE id = ?";
		$query = $this->db->query($sql, array($tanggal, $versi, $id));
	}

	function hapus_pengajuan($id){
		$sql = "DELETE FROM pengajuan
				WHERE id = ?";
		$query = $this->db->query($sql, array($id));
	}

}
?>