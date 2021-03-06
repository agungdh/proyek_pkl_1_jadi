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
      
      <!-- <a href='<?php echo base_url("pengajuanborang/tambah"); ?>'><button class="btn btn-success"><i class="fa fa-plus"></i> Pengajuan</button></a> -->
    </div>

    <table id="lookup" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
      <thead>
        <tr>
                    <th>TANGGAL</th>
                    <th>VERSI</th>
                    <th>TIPE VERSI</th>
                    <th>TAHUN BORANG</th>
                    <th>UPLOAD</th>
                    <th>PROSES</th>
        </tr>
      </thead>

      <tbody>
        <?php
        foreach ($data['pengajuanborang'] as $item) {
          $jumlah_total_dokumen = count($this->db->get_where('v_pengajuan_dokumen', array('id_tipeversi' => $item->tipeversi_id))->result());
          $jumlah_dokumen = count($this->db->get_where('dokumen', array('pengajuan_id' => $item->id))->result());
          $persentase = $jumlah_dokumen != 0 ? $jumlah_dokumen / $jumlah_total_dokumen * 100 : 0;
          $versih = $this->db->get_where('versi', array('id' => $this->db->get_where('tipeversi', array('id' => $item->tipeversi_id))->row()->versi_id))->row();
          $tipeversih = $this->db->get_where('tipeversi', array('id' => $item->tipeversi_id))->row();
          ?>
          <tr>
            <th><?php echo $this->pustaka->tanggal_indo($item->tanggal); ?></th>
            <th><?php echo $versih->versi . ' | ' . $versih->nama . ' | ' . $versih->tahun; ?></th>
            <th><?php echo $tipeversih->tipe; ?></th>
            <th><?php echo $item->tahun_borang; ?></th>
            <th><?php echo number_format((float)$persentase, 2, '.', '') . ' %'; ?></th>
              <th>
                <a class="btn btn-primary" href="<?php echo base_url('dokumen/index/'.$item->id) ?>"><i class="fa fa-share"></i>  Dokumen</a>
              <!--   <a class="btn btn-info" href="<?php echo base_url('pengajuan/ubah/'.$item->id) ?>"><i class="fa fa-pencil"></i> </a>
                <a class="btn btn-danger" onclick="hapus('<?php echo $item->id; ?>')"><i class="fa fa-trash"></i> </a> -->
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
    window.location = "<?php echo base_url('pengajuanborang/aksi_hapus/'); ?>" + id;
  }
}
</script>
