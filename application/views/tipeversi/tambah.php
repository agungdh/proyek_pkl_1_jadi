<div class="box box-primary">
  <div class="box-header with-border">
    <h4><strong><font color=blue>TAMBAH TIPE VERSI</font></strong></h4>
  </div><!-- /.box-header -->

  <!-- form start -->
  <form name="form" id="form" role="form" method="post" action="<?php echo base_url('tipeversi/aksi_tambah/').$data['versi']->id; ?>">
    <div class="box-body">

    <div class="form-group">
      <label for="versi">tipe versi</label>
          <input required type="text" class="form-control" id="versi" placeholder="Isi tipe versi" name="type">          
    </div>

    </div><!-- /.box-body -->

    <div class="box-footer">
      <input class="btn btn-success" name="proses" type="submit" value="Simpan Data" />
      <a href="<?php echo base_url('tipeversi/index/').$data['versi']->id; ?>" class="btn btn-info">Batal</a>
    </div>
  </form>
</div><!-- /.box -->
<script type="text/javascript">
$(function () {
  $('.select2').select2()
});
</script>