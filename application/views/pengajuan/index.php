<?php 
// var_dump($data['versi_borang']);
// exit();
?>
<script type="text/javascript" language="javascript" >
  var dTable;
  $(document).ready(function() {
    dTable = $('#lookup').DataTable({
      responsive: true
    });
  });
</script>

<div class="box box-primary">
  <div class="box-header with-border">
    <h4><strong><font color=blue>DATA PENGAJUAN</font></strong></h4>
  </div><!-- /.box-header -->

    <div class="box-body">

    <div class="form-group">
      
      <a href='<?php echo base_url("pengajuan/tambah"); ?>'><button class="btn btn-success"><i class="fa fa-plus"></i> Pengajuan</button></a>
    </div>

    <table id="lookup" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
      <thead>
        <tr>
                    <th>TANGGAL</th>
                    <th>VERSI</th>
                    <th>TIPE VERSI</th>
                    <th>TAHUN BORANG</th>
                    <th>USER</th>
                    <th>UPLOAD</th>
                    <th>PROSES</th>
        </tr>
      </thead>

      <tbody>
        <?php
        foreach ($data['pengajuan'] as $item) {
          $jumlah_total_dokumen = count($this->db->get_where('v_pengajuan_dokumen', array('id_tipeversi' => $item->id_tipeversi))->result());
          $jumlah_dokumen = count($this->db->get_where('dokumen', array('pengajuan_id' => $item->id_pengajuan))->result());
          $persentase = $jumlah_dokumen / $jumlah_total_dokumen * 100;
          $user = $this->m_universal->get_id('user', $item->id_user);
          if ($user->prodi_id != null) {
            $prodi = $this->m_universal->get_id('prodi', $user->prodi_id);
            $fakultas = $this->m_universal->get_id('fakultas', $prodi->fakultas_id);
            $tblUser = $user->username . ' (' . $fakultas->nama . ' | ' . $prodi->nama . ')';
          } else {
            $tblUser = $user->username;
          }
          $versih = $this->db->get_where('versi', array('id' => $this->db->get_where('tipeversi', array('id' => $item->id_tipeversi))->row()->versi_id))->row();
          ?>
          <tr>
            <th><?php echo $this->pustaka->tanggal_indo($item->tgl_pengajuan); ?></th>
            <th><?php echo $versih->versi . ' | ' . $versih->nama . ' | ' . $versih->tahun; ?></th>
            <th><?php echo $item->tipeversi; ?></th>
            <th><?php echo $item->tahun_borang; ?></th>
            <th><?php echo $tblUser; ?></th>
            <th><?php echo number_format((float)$persentase, 2, '.', '') . ' %'; ?></th>
              <th>
                <a class="btn btn-primary" href="<?php echo base_url('penilaian/index/'.$item->id_pengajuan) ?>"><i class="fa fa-share"></i> Penilaian</a>
                <a class="btn btn-info" href="<?php echo base_url('pengajuan/ubah/'.$item->id_pengajuan) ?>"><i class="fa fa-pencil"></i> </a>
                <a class="btn btn-danger" onclick="hapus('<?php echo $item->id_pengajuan; ?>')"><i class="fa fa-trash"></i> </a>
              </th>
          </tr>
          <?php
        }
        ?>
      </tbody>
      
    </table>
  </div><!-- /.boxbody -->
</div><!-- /.box -->

<script type="text/javascript">
function hapus(id) {
  if (confirm("Yakin hapus ?")) {
    window.location = "<?php echo base_url('pengajuan/aksi_hapus/'); ?>" + id;
  }
}
</script>
