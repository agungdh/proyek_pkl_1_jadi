<div class="box box-primary">
  <div class="box-header with-border">
    <h4><strong><font color=blue>TAMBAH BUTIR</font></strong></h4>
  </div><!-- /.box-header -->

  <!-- form start -->
  <form name="form" id="form" role="form" method="post" action="<?php echo base_url('butirpenilaian/aksi_tambah/'.$data['butir']->id); ?>">
    <div class="box-body">

    <div class="form-group">
      <label for="substandar">Butir</label>
          <input readonly value="<?php echo $data['butir']->nomor . ' | ' . $data['butir']->nama; ?>" required type="text" class="form-control" id="substandar" placeholder="Isi Substandar" name="butir">          
    </div>

    <div class="form-group">
      <label for="nomor">Nomor Butir</label>
          <input required type="text" class="form-control" id="nomor" placeholder="Isi Nomor Butir" name="nomor">         
    </div>


    <div class="form-group">
      <label for="nomor">Deskripsi</label>
          <input required type="text" class="form-control" id="nomor" placeholder="Isi Deskripsi" name="deskripsi">          
    </div>

    <div class="form-group">
      <label for="nama">Bobot</label>
          <input required type="number" class="form-control" min="0" max="1" step=".01" id="nama" placeholder="Isi Bobot" name="bobot">          
    </div>

    </div><!-- /.box-body -->

    <div class="box-footer">
      <input class="btn btn-success" name="proses" type="submit" value="Simpan Data" />
      <a href="<?php echo base_url('butirpenilaian/index/'.$data['butir']->id); ?>" class="btn btn-info">Batal</a>
    </div>
  </form>
</div><!-- /.box -->
<script type="text/javascript">
$(function () {
  $('.select2').select2()
});
</script>