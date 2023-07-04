<?php
if (isset($_GET["BraID"])) {
   $Bid = $_GET["BraID"];
   $qr = "select * from brand where BraID =" . $Bid;
   $result = $con->query($qr) or die($con->error);
   if (isset($_POST['submit'])) {
      $Bname = $_POST["txtName"];
      $img = $_FILES['fImg']['name'];
      $tmp_name = $_FILES['fImg']['tmp_name'];
      if (isset($Bname) && isset($img)) {
         if($img != "" ){
         move_uploaded_file($tmp_name, '../img/brand/' . $img);
         $sql = "UPDATE `brand` SET `BraName` = '$Bname', `BraImage` = '$img' WHERE `BraID` = '$Bid'";
         $query = mysqli_query($con, $sql);
         header('location: admin.php?manage=brand');
         }else{
            $sql = "UPDATE `brand` SET `BraName` = '$Bname' WHERE `BraID` = '$Bid'";
            $query = mysqli_query($con, $sql);
            header('location: admin.php?manage=brand');
         }
      }
   }
}
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
                     <h3 class="card-title">Thêm Thương Hiệu</h3>
                  </div>

                  <!-- /.card-header -->
                  <!-- form start -->
                  <form method="POST" enctype="multipart/form-data">
                     <div class="card-body">
                        <?php if (isset($_GET["BraID"])) {
                              $row_bra = $result->fetch_assoc();
                           } ?>
                        <div class="form-group">
                           <label for="exampleInputEmail1">Tên Thương Hiệu</label>
                           <input type="text" class="form-control" id="exampleInputEmail1" name="txtName" value="<?=$row_bra['BraName']?>">
                        </div>
                        <div class="form-group">
                           <label for="exampleInputEmail1">Hình Ảnh</label>
                           <input type="file" id="fileInput" name="fImg" value="">
                        </div>
                     </div>
                     <!-- /.card-body -->
                     <div class="card-footer">
                        <button type="submit" class="btn btn-primary" name="submit">Submit</button>
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>
      <!-- /.card -->
      <!-- Control Sidebar -->
      <aside class="control-sidebar control-sidebar-dark">
         <!-- Control sidebar content goes here -->
      </aside>
      <!-- /.control-sidebar -->
   </section>
</div>
<!-- </body> -->