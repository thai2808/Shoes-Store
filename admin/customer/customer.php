<?php
$sql_count = "SELECT COUNT(*) AS total FROM customer";
$result_count = $con->query($sql_count);
$row_count = $result_count->fetch_assoc();
$total_customers = $row_count['total'];

$customers_per_page = 1;
$total_pages = ceil($total_customers / $customers_per_page);

$current_page = isset($_GET['page']) ? $_GET['page'] : 1;

$offset = ($current_page - 1) * $customers_per_page;
$sql = "SELECT * FROM customer LIMIT $customers_per_page OFFSET $offset";
$rs = $con->query($sql);
?>
<script>
   function xoabl() {
      var conf = confirm('bạn có muốn xóa khách hàng này không?');
      return conf;
   }
</script>

   <div class="wrapper">


      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
         <!-- Content Header (Page header) -->
         <section class="content-header">
            <div class="container-fluid">
               <div class="row mb-2">
                  <div class="col-sm-6">
                     <h1>Quản Lý Khách Hàng</h1>
                  </div>
                  <div class="col-sm-6">
                     <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="../admin.php">Home</a></li>
                        <li class="breadcrumb-item active">Khách Hàng</li>
                     </ol>
                  </div>
               </div>
            </div><!-- /.container-fluid -->
         </section>

         <!-- Main content -->
         <section class="content">
            <div class="container-fluid">
               <div class="row">
                  <div class="col-md">
                     <div class="card">
                        <div class="card-header">
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                           <table class="table table-bordered text-center">
                              <thead>
                                 <tr>
                                    <th style="width: 10px">ID</th>
                                    <th>Tên Khách Hàng</th>
                                    <th>Tài Khoản KH</th>
                                    <th>Mật Khẩu</th>
                                    <th>Số Điện Thoại</th>
                                    <th>Email</th>
                                    <th>Địa Chỉ</th>
                                    <th>Trạng Thái</th>
                                 </tr>
                              </thead>
                              <tbody>
                                 <?php while ($row = $rs->fetch_assoc()) { ?>
                                    <tr>
                                       <td><?= $row["CusID"] ?></td>
                                       <td><?= $row["CusName"] ?></td>
                                       <td><?= $row["CusUser"] ?></td>
                                       <td><?= $row["CusPass"] ?></td>
                                       <td><?= $row["CusPhone"] ?></td>
                                       <td><?= $row["CusMail"] ?></td>
                                       <td><?= $row["CusAdr"] ?></td>
                                       <td><?= $row["CusStatus"] ?></td>
                                       <td>
                                          <a onclick="return xoabl();" href="customer/customer_delete.php?Del=<?= $row['CusID'] ?>"><button class="btn btn-danger">Xóa</button></a>
                                       </td>
                                    </tr>
                                 <?php } ?>
                              </tbody>
                           </table>
                        </div>
                        <!-- /.card-body -->
                        <div class="card-footer clearfix">
                           <ul class="pagination pagination-sm m-0 float-right">
                              <?php if ($current_page > 1) : ?>
                                 <li class="page-item"><a class="page-link" href="?manage=customer&page=1">&laquo;</a></li>
                              <?php endif; ?>
                              <?php for ($i = 1; $i <= $total_pages; $i++) : ?>
                                 <li class="page-item <?= ($i == $current_page) ? 'active' : '' ?>"><a class="page-link" href="?manage=customer&page=<?= $i ?>"><?= $i ?></a></li>
                              <?php endfor; ?>
                              <?php if ($current_page < $total_pages) : ?>
                                 <li class="page-item"><a class="page-link" href="?manage=customer&page=<?=$total_pages?>">&raquo;</a></li>
                              <?php endif; ?>
                           </ul>
                        </div>
                     </div>
                     <!-- /.card -->
                     <!-- /.card -->
                  </div>
                  <!-- /.col -->
               </div>
               <!-- /.row -->

               <!-- /.row -->

               <!-- /.row -->


               <!-- /.row -->
            </div><!-- /.container-fluid -->
         </section>
         <!-- /.content -->
      </div>
      <!-- /.content-wrapper -->


      <!-- Control Sidebar -->
      <aside class="control-sidebar control-sidebar-dark">
         <!-- Control sidebar content goes here -->
      </aside>
      <!-- /.control-sidebar -->
   </div>
   <!-- ./wrapper -->
