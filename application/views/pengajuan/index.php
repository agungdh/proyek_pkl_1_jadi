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
                    <th>TAHUN</th>
                    <th>PROSES</th>
        </tr>
      </thead>

      <tbody>
        <?php
        foreach ($data['pengajuan'] as $item) {
          ?>
          <tr>
            <th><?php echo $this->pustaka->tanggal_indo($item->tanggal); ?></th>
            <th><?php echo $item->nama; ?></th>
            <th><?php echo $item->tahun; ?></th>
              <th>
                <a class="btn btn-primary" href="<?php echo base_url('dokumen/index/'.$item->id) ?>"><i class="fa fa-share"></i>  Dokumen</a>
                <a class="btn btn-info" href="<?php echo base_url('pengajuan/ubah/'.$item->id) ?>"><i class="fa fa-pencil"></i> </a>
                <a class="btn btn-danger" onclick="hapus('<?php echo $item->id; ?>')"><i class="fa fa-trash"></i> </a>
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
