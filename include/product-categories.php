   <?php
   $sql_product = mysqli_query($con, 'SELECT * FROM `product` WHERE ProNumber > 70 Limit 10');
   ?>
<!-- Sản Phẩm Bán Chạy -->
   <!-- Featured Section Begin -->
   <section class="featured spad">
      <div class="container text-center">
         <div class="row">
            <div class="col-lg-12">
               <div class="section-title">
                  <h4>Sản Phẩm Bán Chạy</h4>
               </div>
            </div>
         </div>
         <div class="row featured__filter">
            <?php
            while ($row_product = mysqli_fetch_array($sql_product)) {
            ?>
               <div class="col-lg-3 col-md-4 col-sm-6 mix product-box">
                  <div class="featured__item">
                     <a href="#">
                        <div class="featured__item__pic">
                           <img src="img/all/<?php echo $row_product['ProPicture'] ?>" alt="">
                     </a>
                     <ul class="featured__item__pic__hover">
                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                        <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                     </ul>
                  </div>
                  <div class="featured__item__text">
                     <h6><a href="#"><?php echo $row_product['ProName'] ?></a></h6>
                     <h5><?php echo number_format($row_product['ProPrice']) ?>,000₫</h5>
                  </div>
               </div>
         </div>
      <?php
            }
      ?>
      <div class="col-lg col-md col-sm">
         <a href="#"><button class="btn btn-primary more" type="submit">Xem Thêm Sản Phẩm</button></a>
      </div>
   </section>
<!-- Featured Section End -->
   <!-- Sản Phẩm Mới Nhất -->
   <section class="featured spad">
      <div class="container text-center">
         <div class="row">
            <div class="col-lg-12">
               <div class="section-title">
                  <h4>Sản Phẩm Mới Nhất</h4>
               </div>
            </div>
         </div>
         <div class="row featured__filter">
            <?php
            $sql_product1 = mysqli_query($con, 'SELECT * FROM `product` ORDER BY ProDate DESC Limit 10');
            while ($row_product1 = mysqli_fetch_array($sql_product1)) {
            ?>
               <div class="col-lg-3 col-md-4 col-sm-6 mix product-box">
                  <div class="featured__item">
                     <a href="#">
                        <div class="featured__item__pic">
                           <img src="img/all/<?php echo $row_product1['ProPicture'] ?>" alt="">
                     </a>
                     <ul class="featured__item__pic__hover">
                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                        <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                     </ul>
                  </div>

                  <div class="featured__item__text">
                     <h6><a href="#"><?php echo $row_product1['ProName'] ?></a></h6>
                     <h5><?php echo number_format($row_product1['ProPrice']) ?>,000₫</h5>
                  </div>
               </div>
         </div>
      <?php
            }
      ?>
      <div class="col-lg col-md col-sm">
         <a href="#"><button class="btn btn-primary more" type="submit">Xem Thêm Sản Phẩm</button></a>
      </div>
   </section>
   <!-- Banner Begin -->
   <div class="banner">
      <div class="container">
         <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6">
               <div class="banner__pic">
                  <img src="img/banner/banner-shoe-1.jpg" alt="">
               </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
               <div class="banner__pic">
                  <img src="img/banner/banner-shoe-2.jpg" alt="">
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- Banner End -->