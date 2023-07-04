<?php
   require("../connect.php");
   $admin = "select * from admin";
   $result = $con->query($admin);
   $row = $result -> fetch_assoc();
?>
<aside class="main-sidebar sidebar-dark-primary elevation-4">
         <!-- Brand Logo -->
         <a href="index3.html" class="brand-link">
            <img src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
               style="opacity: .8">
            <span class="brand-text font-weight-light">AdminLTE 3</span>
         </a>

         <!-- Sidebar -->
         <div class="sidebar">
            <!-- Sidebar user panel (optional) -->
            <div class="user-panel mt-3 pb-3 mb-3 d-flex">
               <div class="image">
                  <img src="dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
               </div>
               <div class="info">
                  <a href="#" class="d-block">Hi, <?=$row["AdName"]?></a>
               </div>
            </div>

            <!-- SidebarSearch Form -->
            <div class="form-inline">
               <div class="input-group" data-widget="sidebar-search">
                  <input class="form-control form-control-sidebar" type="search" placeholder="Search"
                     aria-label="Search">
                  <div class="input-group-append">
                     <button class="btn btn-sidebar">
                        <i class="fas fa-search fa-fw"></i>
                     </button>
                  </div>
               </div>
            </div>

            <!-- Sidebar Menu -->
            <nav class="mt-2">
               <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                  data-accordion="false">
                  <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
                  <li class="nav-item menu-open">
                     <a href="admin.php" class="nav-link active">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                           Dashboard
                        </p>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a href="admin.php?manage=categories" class="nav-link">
                        <i class="nav-icon fas fa-copy"></i>
                        <p>
                           Quản lý Danh Mục
                        </p>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a href="admin.php?manage=product" class="nav-link">
                        <i class="nav-icon fas fa-box"></i>
                        <p>
                           Quản lý Sản Phẩm
                        </p>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a href="admin.php?manage=brand" class="nav-link">
                        <i class="nav-icon fas fa-trademark"></i>
                        <p>
                           Quản lý Thương Hiệu
                        </p>
                     </a>
                  </li>
                  
                  <li class="nav-item">
                     <a href="admin.php?manage=comment" class="nav-link">
                        <i class="nav-icon fas fa-sharp fa-solid fa-comments"></i>
                        <p>
                           Quản lý Comment
                        </p>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a href="admin.php?manage=customer" class="nav-link">
                        <i class="nav-icon fas fa-regular fa-users"></i>
                        <p>
                           Quản lý Khách Hàng
                        </p>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a href="admin.php?manage=paymentmethod" class="nav-link">
                        <!-- <i class="nav-icon fas fa-copy"></i> -->
                        <i class="nav-icon fas fa-light fa-credit-card"></i>
                        <p>
                           Quản Lý Thanh Toán
                        </p>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a href="admin.php?manage=blog" class="nav-link">
                        <!-- <i class="nav-icon fas fa-copy"></i> -->
                        <i class="nav-icon fas fa-blog"></i>
                        <p>
                           Quản Lý Blog
                        </p>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a href="admin.php?manage=image" class="nav-link">
                        <!-- <i class="nav-icon fas fa-copy"></i> -->
                        <i class="nav-icon fas fa-images"></i>
                        <p>
                           Quản Lý Ảnh Sản Phẩm
                        </p>
                     </a>
                  </li>
               </ul>
            </nav>
            <!-- /.sidebar-menu -->
         </div>
         <!-- /.sidebar -->
      </aside>