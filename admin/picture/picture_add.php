<?php
if (isset($_POST['submit'])) {
    $Image1 = $_FILES["fImage1"]["name"];
    $Image2 = $_FILES["fImage2"]["name"];
    $Image3 = $_FILES["fImage3"]["name"];
    $Image4 = $_FILES["fImage4"]["name"];
    $ProID = $_POST["txtProID"];
    $target_file1 = "../../img/img-pro/" . $Image1;
    $target_file2 = "../../img/img-pro/" . $Image2;
    $target_file3 = "../../img/img-pro/" . $Image3;
    $target_file4 = "../../img/img-pro/" . $Image4;
    if (move_uploaded_file($_FILES["fImage1"]["tmp_name"], $target_file1)) {
        if (move_uploaded_file($_FILES["fImage2"]["tmp_name"], $target_file2)) {
            if (move_uploaded_file($_FILES["fImage3"]["tmp_name"], $target_file3)) {
                if (move_uploaded_file($_FILES["fImage4"]["tmp_name"], $target_file4)) {
                    if (isset($ProID)) {
                        $sql = "insert into picture(Image1, Image2, Image3, Image4, ProID) values ('" . $Image1 . "','" . $Image2 . "','" . $Image3 . "','" . $Image4 . "','" . $ProID . "')";
                        $query = mysqli_query($con, $sql);
                        header('location: admin.php?manage=picture');
                    }
                }
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
                    <h1>Thêm Blog</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="admin.php">Home</a></li>
                        <li class="breadcrumb-item active">Blog</li>
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
                            <h3 class="card-title">Thêm Blog</h3>
                        </div>
                        <!-- /.card-header -->
                        <!-- form start -->
                        <form method="POST" enctype="multipart/form-data" action="admin.php?manage=picture">
                            <div class="card-body">
                                <div class="form-group">
                                    <label>Ảnh 1</label>
                                    <input type="file" class="form-control" name="fImage1">
                                </div>
                                <div class="form-group">
                                    <label>Ảnh 2</label>
                                    <input type="file" class="form-control" name="fImage2">
                                </div>
                                <div class="form-group">
                                    <label>Ảnh 3</label>
                                    <input type="file" class="form-control" name="fImage3">
                                </div>
                                <div class="form-group">
                                    <label>Ảnh 4</label>
                                    <input type="file" class="form-control" name="fImage4">
                                </div>
                                <div class="form-group">
                                    <label>Product ID</label>
                                    <input type="text" class="form-control" name="txtProID">
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

</html>