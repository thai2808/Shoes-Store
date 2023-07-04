<?php
if (isset($_POST['submit'])) {
    $BlogImage = $_FILES["fBlogImage"]["name"];
    $BlogTittle = $_POST["txtBlogTittle"];
    $BlogDescription = $_POST["taBlogDescription"];
    $BlogContent = $_POST["taBlogContent"];
    $AdID = $_POST["txtAdID"];
    $target_file = "../../img/all/" . $BlogImage;
    if (move_uploaded_file($_FILES["fBlogImage"]["tmp_name"], $target_file)) {
        if (isset($BlogTittle) && isset($BlogDescription) && isset($BlogContent) && isset($AdID)) {
            $sql = "insert into blog(BlogImage, BlogTittle, BlogDescription, BlogContent, AdID) values ('" . $BlogImage . "','" . $BlogTittle . "','" . $BlogDescription . "','" . $BlogContent . "','" . $AdID . "')";
            $query = mysqli_query($con, $sql);
            header('location: admin.php?manage=blog');
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
                        <form method="POST" enctype="multipart/form-data" action="admin.php?manage=blog">
                            <div class="card-body">
                                <div class="form-group">
                                    <label>Ảnh</label>
                                    <input type="file" class="form-control" name="fBlogImage">
                                </div>
                                <div class="form-group">
                                    <label>Tiêu Đề</label>
                                    <input type="text" class="form-control" name="txtBlogTittle">
                                </div>
                                <div class="form-group">
                                    <label>Mô Tả</label>
                                    <textarea cols=10 rows=3 class="form-control" name="taBlogDescription"></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Nội Dung</label>
                                    <textarea cols=25 rows=10 class="form-control" name="taBlogContent"></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Admin ID</label>
                                    <input type="text" class="form-control" name="txtAdID">
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