<?php
if (isset($_GET["BlogID"])) {
    $BlogID = $_GET["BlogID"];
    $qr = "select * from blog where BlogID =" . $BlogID;
    $result = $con->query($qr) or die($con->error);
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $BlogImage = $_FILES["fBlogImage"]["name"];
        $BlogTittle = $_POST["txtBlogTittle"];
        $BlogDescription = $_POST["taBlogDescription"];
        $BlogContent = $_POST["taBlogContent"];
        $AdID = $_POST["txtAdID"];
        $target_file = "../../img/all/" . $BlogImage;
        if ($BlogImage != "") {
            if (move_uploaded_file($_FILES["fBlogImage"]["tmp_name"], $target_file)) {
                $sql = "UPDATE `blog` SET BlogImage = '$BlogImage', BlogTittle = '$BlogTittle', BlogDescription = '$BlogDescription', BlogContent = '$BlogContent', AdID = '$AdID' WHERE BlogID =" . $BlogID;
                $rs = $con->query($sql) or die($conn->error);
            }
        } else {
            $sql = "UPDATE `blog` SET BlogTittle = '$BlogTittle', BlogDescription = '$BlogDescription', BlogContent = '$BlogContent', AdID = '$AdID' WHERE BlogID =" . $BlogID;
            $rs = $con->query($sql) or die($conn->error);
        }
        if ($rs == TRUE) {
            echo "<center style='color: green;'>Sửa Thành Công</center>";
            header('location: admin.php?manage=blog');
        } else {
            echo "<center style='color: red;'>Sửa Thất Bại</center>";
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
                    <h1>Sửa Blog</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="../admin.php">Home</a></li>
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
                            <h3 class="card-title">Sửa Blog</h3>
                        </div>
                        <!-- /.card-header -->
                        <!-- form start -->
                        <form method="POST" enctype="multipart/form-data" action="admin.php?manage=blog">
                            <div class="card-body">
                                <div class="form-group">
                                    <?php if (isset($_GET["BlogID"])) {
                                        $row = $result->fetch_assoc();
                                    } ?>
                                    <label>Ảnh</label>
                                    <input type="file" class="form-control" name="fBlogImage">
                                    <img src="../img/all/<?= $row["BlogImage"] ?>" alt="" width="200">
                                </div>
                                <div class="form-group">
                                    <label>Tiêu Đề</label>
                                    <input type="text" class="form-control" name="txtBlogTittle" value="<?= $row["BlogTittle"]; ?>">
                                </div>
                                <div class="form-group">
                                    <label>Mô Tả</label>
                                    <textarea cols=10 rows=3 class="form-control" name="taBlogDescription"><?= $row["BlogDescription"] ?></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Nội Dung</label>
                                    <textarea cols=25 rows=10 class="form-control" name="taBlogContent"><?= $row["BlogContent"] ?></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Admin ID</label>
                                    <input type="text" class="form-control" name="txtAdID" value="<?= $row["AdID"] ?>">
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