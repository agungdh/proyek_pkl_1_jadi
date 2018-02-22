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
    <h4><strong><font color=blue>DATA STANDAR</font></strong></h4>
  </div><!-- /.box-header -->

    <div class="box-body">

    <div class="form-group">
      <h5><strong><font color=blue><?php echo 'Versi : ' . $data['versi']->versi . ' | ' . $data['versi']->nama . ' | ' . $data['versi']->tahun; ?></font></strong></h5>
      <a href='<?php echo base_url("versi"); ?>'><button class="btn btn-success">Kembali ke Versi</button></a><br><br>
      <a href='<?php echo base_url("standar/tambah/".$data['versi']->id); ?>'><button class="btn btn-success">+ Tambah Standar</button></a>
    </div>

    <table id="lookup" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
      <thead>
        <tr>
                    <th>NOMOR</th>
                    <th>NAMA</th>
                    <th>PROSES</th>
        </tr>
      </thead>

      <tbody>
        <?php
        foreach ($data['standar'] as $item) {
          ?>
          <tr>
            <th><?php echo $item->nomor; ?></th>
            <th><?php echo $item->nama; ?></th>
              <th>
                <a class="btn btn-success" href="<?php echo base_url('substandar/index/'.$item->id) ?>">Substandar</a>
                <a class="btn btn-success" href="<?php echo base_url('standar/ubah/'.$item->id) ?>">Ubah</a>
                <a class="btn btn-danger" onclick="hapus('<?php echo $item->id; ?>')">Hapus</a>
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
    window.location = "<?php echo base_url('standar/aksi_hapus/'); ?>" + id;
  }
}
</script>
