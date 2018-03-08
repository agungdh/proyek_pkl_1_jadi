<div class="box box-primary">
  <div class="box-header with-border">
    <h4><strong><font color=blue>UBAH TYPE LIST DOKUMEN</font></strong></h4>
  </div><!-- /.box-header -->

  <!-- form start -->
  <form name="form" id="form" role="form" method="post" action="<?php echo base_url('type_dokumen/aksi_ubah'); ?>">
    <div class="box-body">

    <input type="hidden" name="id" value="<?php echo $data['type']->id_type; ?>">

    <div class="form-group">
      <label for="substandar">Type List Dokumen</label>
          <input value="<?php echo $data['type']->type; ?>"  required type="text" class="form-control" id="substandar" placeholder="Isi subStandar" name="type">          
    </div>

    </div><!-- /.box-body -->

    <div class="box-footer">
      <input class="btn btn-success" name="proses" type="submit" value="Simpan Data" />
      <a href="<?php echo base_url('type_dokumen/index/'.$data['type']->id_type); ?>" class="btn btn-info">Batal</a>
    </div>
  </form>
</div><!-- /.box -->
<script type="text/javascript">
$(function () {
  $('.select2').select2()
});
</script>