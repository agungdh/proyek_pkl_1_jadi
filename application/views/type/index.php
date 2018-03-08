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
    <h4><strong><font color=blue>DATA VERSI</font></strong></h4>
  </div><!-- /.box-header -->

    <div class="box-body">

    <div class="form-group">
      <a href='<?php echo base_url("type_dokumen/tambah"); ?>'><button class="btn btn-success"><i class="fa fa-plus"></i> Type list dokumen</button></a><br><br>
    </div>

    <table id="lookup" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
      <thead>
        <tr>
            <th>NO</th>
            <th>Type List Dokumen</th>
            <th>Proses </th>
        </tr>
      </thead>

      <tbody>
        <?php $no = 1;
        foreach ($data['type'] as $item) {
          ?>
          <tr>
            <th><?php echo $no++; ?></th>
            <th><?php echo $item->type; ?></th>
              <th><center>
                <a class="btn btn-info" href="<?php echo base_url('type_dokumen/ubah/'.$item->id_type) ?>"><i class="fa fa-pencil"></i></a>
                <a class="btn btn-danger" onclick="hapus('<?php echo $item->id_type; ?>')"><i class="fa fa-trash"></i></a>
              </center></th>
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
    window.location = "<?php echo base_url('type_dokumen/aksi_hapus/'); ?>" + id;
  }
}
</script>
