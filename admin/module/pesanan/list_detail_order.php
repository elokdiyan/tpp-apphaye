 <!--**********************************
            Content body start
            ***********************************-->
            <div class="content-body">

              <div class="container-fluid mt-3">
                <!-- Main content -->
                <section class="content">
                  <!-- Info boxes -->
                  <div class="row">
                    <div class="col-xs-12">
                        <div class="box box-info">
                            <div class="box-header">
                                <h3 class="box-title"> Data Ketegori</h3>
                                <div class="box-tools">
                                    <div class="input-group" style="width : 150px;">
                                        <input type="text" name="table_search" class="form-control input-sm pull-right" placeholder="Search">
                                        <div class="input-group-btn">
                                            <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </div> <!-- /.Box Header -->
                            <div class="box-body table-responsive no-padding">
                                <table class="table table-hover">
                                    <tr>
                                        <th>Nama Pembeli</th>
                                        <th>Tanggal Order</th>
                                        <th>Status Order</th> 
                                        <th>Biaya Kirim</th>
                                        <th> </th>
                                    </tr>
                                    <?php 
                                    include "../lib/config.php";
                                    include "../lib/koneksi.php";
                                    $id_order = $_GET['id_order'];
                                    $sql = mysqli_query($koneksi, "SELECT * FROM tbl_detail_order, tbl_produk WHERE tbl_detail_order.id_order = '$id_order' AND tbl_detail_order.id_produk = tbl_produk.id_produk");
                                    while ($d=mysqli_fetch_array($sql)){
                                       ?>
                                       <tr>
                                        <td>
                                            <img width="100px" height="100px" src="upload/<?php echo $d['gambar']; ?>" >
                                        </td>
                                        <td>
                                           <?php echo $d['nama_produk']; ?>
                                       </td>
                                       <td>
                                           <?php echo $d['jumlah']; ?>
                                       </td>
                                       <td>
                                           <?php echo $d['harga']; ?>
                                       </td>
                                   </tr> 
                               <?php } ?>
                           </table>
                       </div> <!-- /.Box Body -->
                       <div class="box-footer">
                        <a href="<?php echo $base_url; ?>admin/adminweb.php?module=pesanan">
                            <button class="btn btn-success">Kembali</button>
                        </a>
                    </div>
                    <!-- /.Box Footer -->
                </div> <!-- /.Box -->
            </div>
        </div>
    </section>
</div>
</div>
