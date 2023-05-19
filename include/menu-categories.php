<?php
$sql_category = mysqli_query($con, 'SELECT * FROM brand');
?>
<section class="hero">
   <div class="container">
      <div class="row">
         <div class="col-lg-3">
            <div class="hero__categories">
               <div class="hero__categories__all">
                  <i class="fa fa-bars"></i>
                  <span>Thương Hiệu</span>
               </div>
               <ul>
                  <?php
                  while ($row_category = mysqli_fetch_array($sql_category)) {
                  ?>
                     <li><a href="#">Giày <?php echo $row_category['BraName'] ?></a></li>
                  <?php
                  }
                  ?>
               </ul>
            </div>
         </div>
         <div class="col-lg-9">
            <div class="hero__search">
               <div class="hero__search__form">
                  <form action="#">
                     <div class="hero__search__categories">
                        All Categories
                        <span class="arrow_carrot-down"></span>
                     </div>
                     <input type="text" placeholder="What do yo u need?">
                     <button type="submit" class="site-btn">SEARCH</button>
                  </form>
               </div>
               <div class="hero__search__phone">
                  <div class="hero__search__phone__icon">
                     <i class="fa fa-phone"></i>
                  </div>
                  <div class="hero__search__phone__text">
                     <h5>+84 859 655 99 </h5>
                     <span>support 24/7 time</span>
                  </div>
               </div>
            </div>
            <div class="hero__item set-bg" data-setbg="img/hero/banner-shoes.jpg">
               <div class="hero__text">
                  <span>Buy Online</span>
                  <h2>The Best <br />Sale</h2>
                  <p>Free Pickup and Delivery Available</p>
                  <a href="#" class="primary-btn">SHOP NOW</a>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>

<!-- -->
<section class="km">
   <div class="container">
      <div class="row">
         <div class="col-lg-3 kmm">
            <div>
            <img src="img/deliver.png" alt="" ></div>
            <div class="content-text">
               <h6>Vận chuyển miễn phí</h6>
               <p>Hỗ trợ trực tiếp nhanh chóng</p>
            </div>
         </div>
         <div class="col-lg-3">
            <div class="">
               <img src="img/gift.png" alt="" width="50">
               <h5></h5>
            </div>
         </div>
         <div class="col-lg-3">
            <div class="">
               <img src="img/award.png" alt="" width="50">
            </div>
         </div>
         <div class="col-lg-3">
            <div class="">
               <img src="img/hotline.png" alt="" width="50">
            </div>
         </div>

      </div>
   </div>
</section>
<!--  -->
