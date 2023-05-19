<?php
	session_start();
	include_once('connect.php');
?>
<!DOCTYPE html>
<html lang="zxx">

<head>
   <meta charset="UTF-8">
   <meta name="description" content="Ogani Template">
   <meta name="keywords" content="Ogani, unica, creative, html">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta http-equiv="X-UA-Compatible" content="ie=edge">
   <title>Shoes Store</title>
   <!-- Google Font -->
   <link href="https://fonts.googleapis.com/css2?family=Arial:wght@200;300;400;600;900&display=swap" rel="stylesheet">
   <!-- Css Styles -->
   <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
   <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
   <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
   <link rel="stylesheet" href="css/nice-select.css" type="text/css">
   <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
   <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
   <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
   <link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
   <!-- Header Section Begin -->
   <?php
	include('include/header.php'); 
   ?>
   <!-- Header Section End -->

   <!-- Hero Section Begin -->

   <!-- Hero Section End -->
   <?php
	include('include/menu-categories.php'); 
   ?>
   <!-- Categories Section Begin -->
   
   <!-- Categories Section End -->

   <!-- Featured Section Begin -->
   <?php
	include('include/product-categories.php'); 
   ?>
   <!-- Featured Section End -->

   <!-- Banner Begin -->

   <!-- Banner End -->

   <!-- Latest Product Section Begin -->
   <!-- <section class="latest-product spad">
      <div class="container">
         <div class="row">
            <div class="col-lg-4 col-md-6">
               <div class="latest-product__text">
                  <h4>Latest Products</h4>
                  <div class="latest-product__slider owl-carousel">
                     <div class="latest-prdouct__slider__item">
                        <a href="#" class="latest-product__item">
                           <div class="latest-product__item__pic">
                              <img src="img/latest-product/lp-1.jpg" alt="">
                           </div>
                           <div class="latest-product__item__text">
                              <h6>Crab Pool Security</h6>
                              <span>$30.00</span>
                           </div>
                        </a>
                        <a href="#" class="latest-product__item">
                           <div class="latest-product__item__pic">
                              <img src="img/latest-product/lp-2.jpg" alt="">
                           </div>
                           <div class="latest-product__item__text">
                              <h6>Crab Pool Security</h6>
                              <span>$30.00</span>
                           </div>
                        </a>
                        <a href="#" class="latest-product__item">
                           <div class="latest-product__item__pic">
                              <img src="img/latest-product/lp-3.jpg" alt="">
                           </div>
                           <div class="latest-product__item__text">
                              <h6>Crab Pool Security</h6>
                              <span>$30.00</span>
                           </div>
                        </a>
                     </div>
                     <div class="latest-prdouct__slider__item">
                        <a href="#" class="latest-product__item">
                           <div class="latest-product__item__pic">
                              <img src="img/latest-product/lp-1.jpg" alt="">
                           </div>
                           <div class="latest-product__item__text">
                              <h6>Crab Pool Security</h6>
                              <span>$30.00</span>
                           </div>
                        </a>
                        <a href="#" class="latest-product__item">
                           <div class="latest-product__item__pic">
                              <img src="img/latest-product/lp-2.jpg" alt="">
                           </div>
                           <div class="latest-product__item__text">
                              <h6>Crab Pool Security</h6>
                              <span>$30.00</span>
                           </div>
                        </a>
                        <a href="#" class="latest-product__item">
                           <div class="latest-product__item__pic">
                              <img src="img/latest-product/lp-3.jpg" alt="">
                           </div>
                           <div class="latest-product__item__text">
                              <h6>Crab Pool Security</h6>
                              <span>$30.00</span>
                           </div>
                        </a>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-lg-4 col-md-6">
               <div class="latest-product__text">
                  <h4>Top Rated Products</h4>
                  <div class="latest-product__slider owl-carousel">
                     <div class="latest-prdouct__slider__item">
                        <a href="#" class="latest-product__item">
                           <div class="latest-product__item__pic">
                              <img src="img/latest-product/lp-1.jpg" alt="">
                           </div>
                           <div class="latest-product__item__text">
                              <h6>Crab Pool Security</h6>
                              <span>$30.00</span>
                           </div>
                        </a>
                        <a href="#" class="latest-product__item">
                           <div class="latest-product__item__pic">
                              <img src="img/latest-product/lp-2.jpg" alt="">
                           </div>
                           <div class="latest-product__item__text">
                              <h6>Crab Pool Security</h6>
                              <span>$30.00</span>
                           </div>
                        </a>
                        <a href="#" class="latest-product__item">
                           <div class="latest-product__item__pic">
                              <img src="img/latest-product/lp-3.jpg" alt="">
                           </div>
                           <div class="latest-product__item__text">
                              <h6>Crab Pool Security</h6>
                              <span>$30.00</span>
                           </div>
                        </a>
                     </div>
                     <div class="latest-prdouct__slider__item">
                        <a href="#" class="latest-product__item">
                           <div class="latest-product__item__pic">
                              <img src="img/latest-product/lp-1.jpg" alt="">
                           </div>
                           <div class="latest-product__item__text">
                              <h6>Crab Pool Security</h6>
                              <span>$30.00</span>
                           </div>
                        </a>
                        <a href="#" class="latest-product__item">
                           <div class="latest-product__item__pic">
                              <img src="img/latest-product/lp-2.jpg" alt="">
                           </div>
                           <div class="latest-product__item__text">
                              <h6>Crab Pool Security</h6>
                              <span>$30.00</span>
                           </div>
                        </a>
                        <a href="#" class="latest-product__item">
                           <div class="latest-product__item__pic">
                              <img src="img/latest-product/lp-3.jpg" alt="">
                           </div>
                           <div class="latest-product__item__text">
                              <h6>Crab Pool Security</h6>
                              <span>$30.00</span>
                           </div>
                        </a>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-lg-4 col-md-6">
               <div class="latest-product__text">
                  <h4>Review Products</h4>
                  <div class="latest-product__slider owl-carousel">
                     <div class="latest-prdouct__slider__item">
                        <a href="#" class="latest-product__item">
                           <div class="latest-product__item__pic">
                              <img src="img/latest-product/lp-1.jpg" alt="">
                           </div>
                           <div class="latest-product__item__text">
                              <h6>Crab Pool Security</h6>
                              <span>$30.00</span>
                           </div>
                        </a>
                        <a href="#" class="latest-product__item">
                           <div class="latest-product__item__pic">
                              <img src="img/latest-product/lp-2.jpg" alt="">
                           </div>
                           <div class="latest-product__item__text">
                              <h6>Crab Pool Security</h6>
                              <span>$30.00</span>
                           </div>
                        </a>
                        <a href="#" class="latest-product__item">
                           <div class="latest-product__item__pic">
                              <img src="img/latest-product/lp-3.jpg" alt="">
                           </div>
                           <div class="latest-product__item__text">
                              <h6>Crab Pool Security</h6>
                              <span>$30.00</span>
                           </div>
                        </a>
                     </div>
                     <div class="latest-prdouct__slider__item">
                        <a href="#" class="latest-product__item">
                           <div class="latest-product__item__pic">
                              <img src="img/latest-product/lp-1.jpg" alt="">
                           </div>
                           <div class="latest-product__item__text">
                              <h6>Crab Pool Security</h6>
                              <span>$30.00</span>
                           </div>
                        </a>
                        <a href="#" class="latest-product__item">
                           <div class="latest-product__item__pic">
                              <img src="img/latest-product/lp-2.jpg" alt="">
                           </div>
                           <div class="latest-product__item__text">
                              <h6>Crab Pool Security</h6>
                              <span>$30.00</span>
                           </div>
                        </a>
                        <a href="#" class="latest-product__item">
                           <div class="latest-product__item__pic">
                              <img src="img/latest-product/lp-3.jpg" alt="">
                           </div>
                           <div class="latest-product__item__text">
                              <h6>Crab Pool Security</h6>
                              <span>$30.00</span>
                           </div>
                        </a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section> -->
   <!-- Latest Product Section End -->

   <!-- Blog Section Begin -->
   <section class="from-blog spad">
      <div class="container">
         <div class="row">
            <div class="col-lg-12">
               <div class="section-title from-blog__title">
                  <h2>Thông tin khuyến mãi</h2>
               </div>
            </div>
         </div>
         <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6">
               <div class="blog__item">
                  <div class="blog__item__pic">
                     <img src="./img/banner/Big-Sale-Banner.jpg" alt="">
                  </div>
                  <div class="blog__item__text">
                     <ul>
                        <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                        <li><i class="fa fa-comment-o"></i> 5</li>
                     </ul>
                     <h5><a href="#">Cooking tips make cooking simple</a></h5>
                     <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                  </div>
               </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
               <div class="blog__item">
                  <div class="blog__item__pic">
                     <img src="img/banner/black_friday_banner.jpg" alt="">
                  </div>
                  <div class="blog__item__text">
                     <ul>
                        <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                        <li><i class="fa fa-comment-o"></i> 5</li>
                     </ul>
                     <h5><a href="#">6 ways to prepare breakfast for 30</a></h5>
                     <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                  </div>
               </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
               <div class="blog__item">
                  <div class="blog__item__pic">
                     <img src="img/banner/Fashion-Sale-Banner.jpg" alt="">
                  </div>
                  <div class="blog__item__text">
                     <ul>
                        <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                        <li><i class="fa fa-comment-o"></i> 5</li>
                     </ul>
                     <h5><a href="#">Visit the clean farm in the US</a></h5>
                     <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>
   <!-- Blog Section End -->

   <!-- Footer Section Begin -->
   <!-- Categories Section Begin -->
<section class="categories">
   <div class="container">
      <div class="row">
         <div class="categories__slider owl-carousel">
            <?php
            $sql_category1 = mysqli_query($con, 'SELECT * FROM brand');
            while ($row_category1 = mysqli_fetch_array($sql_category1)) {
            ?>
               <div class="col-lg-3">
                  <div class="categories__item set-bg" data-setbg="img/categories/<?php echo $row_category1['BraImage'] ?>">
                     <h5><a href="#"><?php echo $row_category1['BraName'] ?></a></h5>
                  </div>
               </div>
            <?php
            }
            ?>
         </div>
      </div>
   </div>
</section>
<!-- Categories Section End -->
   <?php
   include('include/footer.php');
   ?>
   <!-- Footer Section End -->

   <!-- Js Plugins -->
   <script src="js/jquery-3.3.1.min.js"></script>
   <script src="js/bootstrap.min.js"></script>
   <script src="js/jquery.nice-select.min.js"></script>
   <script src="js/jquery-ui.min.js"></script>
   <script src="js/jquery.slicknav.js"></script>
   <script src="js/mixitup.min.js"></script>
   <script src="js/owl.carousel.min.js"></script>
   <script src="js/main.js"></script>



</body>

</html>