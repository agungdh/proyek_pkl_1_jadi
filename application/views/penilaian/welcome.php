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

<div class="box box-primary"
>  <div class="box-header with-border">
    <h4><strong><font color=blue>DATA PENILAIAN</font></strong></h4>
  </div><!-- /.box-header -->

    <div class="box-body">

    <div class="form-group">

      <h5><strong>

        <a href='<?php echo base_url(); ?>'>
          <font color=blue>
            <u>Pengajuan:</u></a>
          </font><br>
          <?php
          $versih = $this->db->get_where('versi', array('id' => $this->db->get_where('tipeversi', array('id' => $data['pengajuan']->id_tipeversi))->row()->versi_id))->row();
          $jumlah_total_dokumen = count($this->db->get_where('v_pengajuan_dokumen', array('id_tipeversi' => $data['pengajuan']->id_tipeversi))->result());
          $jumlah_dokumen = count($this->db->get_where('dokumen', array('pengajuan_id' => $data['pengajuan']->id_pengajuan))->result());
          // $persentase = $jumlah_dokumen / $jumlah_total_dokumen * 100;
          $persentase = $jumlah_dokumen != 0 ? $jumlah_dokumen / $jumlah_total_dokumen * 100 : 0;
          ?>
          Tanggal Pengajuan: <?php echo $this->pustaka->tanggal_indo($data['pengajuan']->tgl_pengajuan); ?><br>
          Versi: <?php echo $versih->versi . ' | ' . $versih->nama . ' | ' . $versih->tahun; ?><br>
          Tipe Versi: <?php echo $data['pengajuan']->tipe; ?><br>
          Tahun Borang: <?php echo $data['pengajuan']->tahun_borang; ?><br>
          <?php
          // $user = $this->m_universal->get_id('user', $data['pengajuan']->id_user);
          // $prodi = $this->m_universal->get_id('prodi', $user->prodi_id);
          // if ($prodi != null) {
          //   $fakultas = $this->m_universal->get_id('fakultas', $prodi->fakultas_id);
          //   $tblUser = $user->username . ' (' . $fakultas->nama . ' | ' . $prodi->nama . ')';
          // } else {
          //   $tblUser = $user->username;
          // }
          $prodi = $this->db->get_where('prodi', array('id' => $data['pengajuan']->id_prodi))->row();
          ?>
          Prodi: <?php echo $prodi->nama; ?><br>
          Fakultas: <?php echo $this->db->get_where('fakultas', array('id' => $prodi->fakultas_id))->row()->nama; ?><br>
          Persentase Dokumen: <?php echo number_format((float)$persentase, 2, '.', '') . ' %'; ?><br>
        <br>
        

      </strong></h5>



    </div>

    <table id="lookup" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
      <thead>
        <tr>
            <th>TANGGAL</th>
            <th>PERSENTASE PENILAIAN</th>
        </tr>
      </thead>

      <tbody style="cursor: pointer;">
            <?php
            foreach ($data['penilaian'] as $item) {
              $href = base_url('welcome/ubah/'.$item->id);
              ?>
              <tr onclick="window.location = '<?php echo $href; ?>'">
                <th><?php echo $this->pustaka->tanggal_indo($item->tanggal); ?></th>
                <?php
                // $this->db->select_sum('nilai');
                // $this->db->where(array('penilaian_id' => $item->id));
                // $jumlah = $this->db->get('detilpenilaian')->row()->nilai;
                $jumlah_yang_harus_dinilai = $this->m_penilaian->hitung_butir_penilaian($data['pengajuan']->id_tipeversi);
                $this->db->where('penilaian_id', $item->id);
                $jumlah_yang_dinilai = $this->db->count_all_results('detilpenilaian');
                // $hasil = ($jumlah_yang_dinilai / $jumlah_yang_harus_dinilai) * 100;
                $hasil = $jumlah_yang_dinilai != 0 ? ($jumlah_yang_dinilai / $jumlah_yang_harus_dinilai) * 100 : 0;
                ?>
                <!-- <th><?php echo $jumlah == null ? 0 : $jumlah; ?></th> -->
                <th><?php echo number_format((float)$hasil, 2, '.', '') . ' %'; ?></th>
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
    window.location = "<?php echo base_url('penilaian/aksi_hapus/'); ?>" + id + '/' + '<?php echo $data['pengajuan']->id_pengajuan; ?>';
  }
}
</script>
