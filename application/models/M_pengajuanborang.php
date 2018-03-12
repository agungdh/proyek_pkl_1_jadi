<?php
class M_pengajuanborang extends CI_Model{	
	function __construct(){
		parent::__construct();		
	}

	function ambil_pengajuan(){
		$sql = "SELECT *
				FROM v_pengajuan";
		$query = $this->db->query($sql, array());
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

	function ambil_tipeversi(){
		$sql = "SELECT *
				FROM v_versitipe";
		$query = $this->db->query($sql, array());
		$row = $query->result();

		return $row;
	}

	function ambil_user(){
		$sql = "SELECT *
				FROM user";
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

	function tambah_pengajuan($tanggal, $user, $tipe, $tahun){
		$sql = "INSERT INTO pengajuan
				SET tanggal = ?,
				user_id = ?,
				tipeversi_id = ?,
				tahun_borang = ?";
		$query = $this->db->query($sql, array($tanggal, $user, $tipe, $tahun));
	}

	function ubah_pengajuan($tanggal, $user, $tipe, $tahun, $id){
		$sql = "UPDATE pengajuan
				SET tanggal 	= ?,
				user_id 		= ?,
				tipeversi_id 	= ?,
				tahun_borang 	= ?
				WHERE id 		= ?";
		$query = $this->db->query($sql, array($tanggal, $user, $tipe, $tahun, $id));
	}

	function hapus_pengajuan($id){
		$sql = "DELETE FROM pengajuan
				WHERE id = ?";
		$query = $this->db->query($sql, array($id));
	}

}
?>