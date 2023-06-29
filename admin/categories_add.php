<?php
require("../connect.php");

if (isset($_GET["Edit_id"])) {
   $Cid = $_GET["Edit_id"];
   $qr = "select * from categories where CateID =" . $Cid;
   $rss = $con->query($qr) or die($con->error);
   if ($_SERVER["REQUEST_METHOD"] == "POST") {
      $Cname = $_POST["txtCate"];
      $Status = $_POST["rdStatus"];
      $sql = "UPDATE `categories` SET CateName = '$Cname' , CateStatus='$Status' WHERE CateID =" . $Cid;
      $rs = $con->query($sql) or die($conn->error);

      if ($rs == TRUE) {
         echo "<center style='color: green;'>Sửa Thành Công</center>";
         header('Location:categories.php');
      } else {
         echo "<center style='color: red;'>SửaThất Bại</center>";
      }
   }
} else {
   if ($_SERVER["REQUEST_METHOD"] == "POST") {
      $Cname = $_POST["txtCate"];
      $Status = $_POST["rdStatus"];

      $sql = "insert into categories(CateName,CateStatus) values ('" . $Cname . "'," . $Status . ")";
      $rs = $con->query($sql) or die($conn->error);
      if ($rs == TRUE) {
         echo "<center style='color: green;'>Thêm Thành Công</center>";
         header('Location:categories.php');
      } else {
         echo "<center style='color: red;'>Thêm Thất Bại</center>";
      }
   }
}


?>

<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <title>AdminLTE 3 | General Form Elements</title>

   <!-- Google Font: Source Sans Pro -->
   <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
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
                     <h1>General Form</h1>
                  </div>
                  <div class="col-sm-6">
                     <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">General Form</li>
                     </ol>
                  </div>
               </div>
            </div><!-- /.container-fluid -->
         </section>

         <!-- Main content -->
         <section class="content">
            <div class="container-fluid">
               <div class="row">
                  <!-- left column -->
                  <div class="col-md">
                     <!-- general form elements -->
                     <div class="card card-primary">
                        <div class="card-header">
                           <?php if (!isset($_GET["Edit_id"])) { ?>
                              <h3 class="card-title">Thêm Danh Mục</h3>
                           <?php } else { ?>
                              <h3 class="card-title">Sửa Danh Mục</h3>
                           <?php } ?>
                        </div>
                        <!-- /.card-header -->
                        <!-- form start -->
                        <form method="POST">
                           <div class="card-body">
                              <div class="form-group">
                                 <label for="exampleInputEmail1">Tên Danh Mục</label>
                                 <?php if (isset($_GET["Edit_id"])) {
                                    $row = $rss->fetch_assoc();
                                 } ?>
                                 <input type="text" class="form-control" id="exampleInputEmail1" name="txtCate" 
                                          value="<?php if (isset($_GET["Edit_id"])) { echo $row["CateName"];} ?>">
                              </div>
                              <div class="form-group">
                                 <label>Trạng Thái</label>
                                 <div style="padding-right: 600px;display: flex;justify-content: space-evenly;">
                                    <input type=radio value="1" <?php if (isset($_GET["Edit_id"]) && $row["CateStatus"] == 1) {
                                                                     echo "checked";
                                                                  } ?> name=rdStatus> Active
                                    <input type=radio value="0" <?php if (isset($_GET["Edit_id"]) && $row["CateStatus"] == 0) {
                                                                     echo "checked";
                                                                  } ?> name=rdStatus> Inactive
                                 </div>
                              </div>
                           </div>
                           <!-- /.card-body -->
                           <div class="card-footer">
                              <button type="submit" class="btn btn-primary">Submit</button>
                           </div>
                        </form>
                     </div>
                     <!-- /.card -->
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
                  <!-- bs-custom-file-input -->
                  <script src="./plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
                  <!-- AdminLTE App -->
                  <script src="./dist/js/adminlte.min.js"></script>
                  <!-- AdminLTE for demo purposes -->
                  <script src="./dist/js/demo.js"></script>
                  <!-- Page specific script -->
                  <script>
                     $(function() {
                        bsCustomFileInput.init();
                     });
                  </script>
</body>

</html>