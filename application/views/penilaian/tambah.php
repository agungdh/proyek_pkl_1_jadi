<?php 
// var_dump($data['versi_borang']);
// exit();
?>
<script type="text/javascript" language="javascript" >
  var dTable;
  var var_last_tab = <?php echo $this->input->get('tab') != null ? $this->input->get('tab') : 'null'; ?>;



  $(document).ready(function() {

    if (var_last_tab != null) {
      $("ul.nav-tabs li").eq(0).attr('class','');
      $("ul.nav-tabs li").eq(var_last_tab-1).attr('class','active');
      $("#tab_1").attr('class','tab-pane');
      $("#tab_"+var_last_tab).attr('class','tab-pane active');
    }

    dTable = $('#lookup').DataTable({
      responsive: true
    });
  });

  function pilih_tab(id) {
    $('#last_tab').val(id);
  }
</script>

<!-- Custom Tabs -->
<div class="box box-primary">

<div class="box-header with-border">
    <div class="form-group">
    <h4><strong><font color=blue>TAMBAH PENILAIAN</font></strong></h4>
    <br>
      <h5><strong>

        <a href='<?php echo base_url("pengajuan"); ?>'>
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
          Persentase Dokumen: <?php echo number_format((float)$persentase, 2, '.', '') . ' %'; ?>
        <br>
        <a href='<?php echo base_url("penilaian/index/" . $data['pengajuan']->id_pengajuan); ?>'>
          <font color=blue>
            <u>Penilaian:</u></a>
          </font><br>
        

      </strong></h5>

    </div>
  </div>
  <div class="box-body">
    <form method="post" action="<?php echo base_url('penilaian/aksi_tambah'); ?>">
    <input type="hidden" name="id_pengajuan" value="<?php echo $data['pengajuan']->id_pengajuan; ?>">
    <input type="hidden" name="last_tab" id="last_tab" value="1">
    <div class="nav-tabs-custom">
      <ul class="nav nav-tabs">
        <?php
        foreach ($data['standar'] as $item) {
          if ($item->nomor == 1) {
            $status = "active";
          } else {
            $status = null;
          }
          ?>
          <li class="<?php echo $status; ?>"><a href="#tab_<?php echo $item->nomor; ?>" onclick="pilih_tab(<?php echo $item->nomor; ?>)" data-toggle="tab">Standar <?php echo $item->nomor; ?></a></li>
          <?php
        }
        ?>
      </ul>
      <div class="tab-content">
      <input class="btn btn-success" type="submit" name="submit" value="Submit">
      <input class="btn btn-success pull-right" type="submit" name="submit" value="Submit">
        <?php
        foreach ($data['standar'] as $item) {
          if ($item->nomor == 1) {
            $status = "active";
          } else {
            $status = null;
          }
          ?>
          <div class="tab-pane <?php echo $status; ?>" id="tab_<?php echo $item->nomor; ?>">
          <table class="table">
            <thead>
              <tr>
                <th>Standar</th>
                <th>Substandar</th>
                <th>Butir</th>
                <th>Butir Penilaian</th>
                <th>Bobot</th>
                <th>Nilai</th>
                <th>List Dokumen</th>
              </tr>
            </thead>
            <tbody>
              <?php
              $id_standar = 0; $id_substandar = 0; $id_butir = 0; $id_listdokumen = 0; 
              foreach ($this->m_penilaian->ambil_detail($item->id) as $item2) {
                  if ($id_standar == $item2->id_standar) {
                    $standar = null;
                  } else {
                    $standar = $item2->nomor_standar . ' ' . $item2->nama_standar;
                  }
                  
                  if ($id_substandar == $item2->id_substandar) {
                    $substandar = null;
                  } else {
                    $substandar = $item2->nomor_substandar . ' ' . $item2->nama_substandar;
                  }
                  
                  $jml_lido = count($this->db->get_where('butirpenilaian', array('butir_id' => $item2->id_butir))->result());
                  if ($id_butir == $item2->id_butir) {
                    $butir = null;
                    $lido = null;
                  } else {
                    $butir = $item2->nomor_butir . ' ' . $item2->nama_butir;
                    $isi_lido = null;
                    foreach ($this->db->get_where('listdokumen', array('butir_id' => $item2->id_butir))->result() as $item3) {
                      $temp_lido = $this->db->get_where('dokumen', array('listdokumen_id' => $item3->id))->result();
                      if ($temp_lido != null) {
                        foreach ($temp_lido as $item4) {
                          $isi_lido .= '<p><a href="'.base_url($item4->url).'">' . $item4->nama_file . '</a></p>'; 
                        }
                      }
                    }
                    $lido = "<td rowspan='".$jml_lido."'>".$isi_lido."</td>";
                  }
                
                  ?>
                  <tr>
                    <td><?php echo $standar; ?></td>
                    <td><?php echo $substandar; ?></td>
                    <td><?php echo $butir; ?></td>
                    <td><?php echo $item2->nomor_butirpenilaian . ' ' . $item2->deskripsi; ?></td>
                    <td><?php echo $item2->bobot; ?></td>
                    <td>
                      <input type="number" min="0" max="4" step=".01" name="nilai[<?php echo $item2->id_butir_penilaian; ?>]">
                    </td>
                    <?php echo $lido; ?>
                  </tr>
                  <?php
                  $id_standar = $item2->id_standar; $id_substandar = $item2->id_substandar; $id_butir = $item2->id_butir;
              }
              ?>
            </tbody>
          </table>
          
          </div>
          <?php
        }
        ?>
        <input class="btn btn-success" type="submit" name="submit" value="Submit">
        <input class="btn btn-success pull-right" type="submit" name="submit" value="Submit">
      </div>
      <!-- /.tab-content -->
    </div>
    <!-- nav-tabs-custom -->
    </form>
</div>
