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

<!-- Custom Tabs -->
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
          <li class="<?php echo $status; ?>"><a href="#tab_<?php echo $item->nomor; ?>" data-toggle="tab">Standar <?php echo $item->nomor; ?></a></li>
          <?php
        }
        ?>
      </ul>
      <div class="tab-content">
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
                <th>List Dokumen</th>
                <th>Dokumen</th>
                <th>Upload</th>
              </tr>
            </thead>
            <tbody>
              <?php
              $id_standar = 0; $id_substandar = 0; $id_butir = 0; $id_listdokumen = 0; 
              foreach ($this->m_dokumen->ambil_detail($item->id) as $item2) {
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
                  
                  if ($id_butir == $item2->id_butir) {
                    $butir = null;
                  } else {
                    $butir = $item2->nomor_butir . ' ' . $item2->nama_butir;
                  }
                  
                  if ($id_listdokumen == $item2->id_listdokumen) {
                    $listdokumen = null;
                  } else {
                    $listdokumen = $item2->keterangan_listdokumen;
                  }
                  ?>
                  <tr>
                    <td><?php echo $standar; ?></td>
                    <td><?php echo $substandar; ?></td>
                    <td><?php echo $butir; ?></td>
                    <td><?php echo $listdokumen; ?></td>
                  </tr>
                  <?php
                  $id_standar = $item2->id_standar; $id_substandar = $item2->id_substandar; $id_butir = $item2->id_butir; $id_listdokumen = $item2->id_listdokumen; 
              }
              ?>
            </tbody>
          </table>
          
          </div>
          <?php
        }
        ?>
        
      </div>
      <!-- /.tab-content -->
    </div>
    <!-- nav-tabs-custom -->