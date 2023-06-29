<?php
   session_start();
   require("../connect.php");
   $sql = "select * from product";
   $rs = $con->query($sql);
?>
<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <title>AdminLTE 3 | Simple Tables</title>

   <!-- Google Font: Source Sans Pro -->
   <link rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
   <!-- Font Awesome -->
   <link rel="stylesheet" href="./plugins/fontawesome-free/css/all.min.css">
   <!-- Theme style -->
   <link rel="stylesheet" href="./dist/css/adminlte.min.css">
</head>

<body class="hold-transition sidebar-mini">
   <div class="wrapper">
      <!-- Navbar -->
      <?php
         include('share/header_admin.php');
      ?>
      <!-- /.navbar -->

      <!-- Main Sidebar Container -->
      <?php
         include('share/sidebar.php');
      ?>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
         <!-- Content Header (Page header) -->
         <section class="content-header">
            <div class="container-fluid">
               <div class="row mb-2">
                  <div class="col-sm-6">
                     <h1>Quản Lý Danh Mục</h1>
                  </div>
                  <div class="col-sm-6">
                     <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Danh Mục</li>
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
                           <button type="submit" class="btn btn-primary">Thêm Danh Mục</button>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                           <table class="table table-bordered text-center">
                              <thead>
                                 <tr>
                                    <th style="width: 10px">ID</th>
                                    <th>Tên Sản Phẩm</th>
                                    <th>Giá Sản Phẩm</th>
                                    <th>Giá Khuyễn Mãi</th>
                                    <th>Số Lượng</th>
                                    <th>Thời Gian</th>
                                    <th>Sản Phầm Hot</th>
                                    <th>Ảnh</th>
                                    <th>Thông Tin Sản Phẩm</th>
                                    <th style="width:130px">Thao Tác</th>
                                 </tr>
                              </thead>
                              <tbody>
                                 <?php while($row = $rs->fetch_assoc()  ){?>
                                 <tr>
                                    <td><?=$row["ProID"]?></td>
                                    <td><?=$row["ProName"]?></td>
                                    <td><?=$row["ProPrice"]?></td>
                                    <td><?=$row["ProBasisPrice"]?></td>
                                    <td><?=$row["ProNumber"]?></td>
                                    <td><?=$row["ProDate"]?></td>
                                    <td><?=$row["ProHot"]?></td>
                                    <td><img src="../img/all/<?=$row["ProPicture"]?>" alt="" width="200"></td>
                                    <td><?=$row["ProInfo"]?></td>
                                    <td>
                                       <button type="submit" class="btn btn-warning">Sửa</button>
                                       <button class="btn btn-danger">Xóa</button>
                                    </td>
                                 </tr>
                                 <?php } ?>
                              </tbody>
                           </table>
                        </div>
                        <!-- /.card-body -->
                        <div class="card-footer clearfix">
                           <ul class="pagination pagination-sm m-0 float-right">
                              <li class="page-item"><a class="page-link" href="#">&laquo;</a></li>
                              <li class="page-item"><a class="page-link" href="#">1</a></li>
                              <li class="page-item"><a class="page-link" href="#">2</a></li>
                              <li class="page-item"><a class="page-link" href="#">3</a></li>
                              <li class="page-item"><a class="page-link" href="#">&raquo;</a></li>
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

   <!-- jQuery -->
   <script src="./plugins/jquery/jquery.min.js"></script>
   <!-- Bootstrap 4 -->
   <script src="./plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
   <!-- AdminLTE App -->
   <script src="./dist/js/adminlte.min.js"></script>
   <!-- AdminLTE for demo purposes -->
   <script src="./dist/js/demo.js"></script>
</body>

</html>