<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

 <!doctype html>
<html class="no-js" lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>기업 정보</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="/goottjobplanet/resources/goottjobplanet/resources/img/favicon.png">
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <link rel="stylesheet" href="/goottjobplanet/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/goottjobplanet/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/goottjobplanet/resources/css/magnific-popup.css">
    <link rel="stylesheet" href="/goottjobplanet/resources/css/font-awesome.min.css">
    <link rel="stylesheet" href="/goottjobplanet/resources/css/themify-icons.css">
    <link rel="stylesheet" href="/goottjobplanet/resources/css/nice-select.css">
    <link rel="stylesheet" href="/goottjobplanet/resources/css/flaticon.css">
    <link rel="stylesheet" href="/goottjobplanet/resources/css/jquery-ui.css">
    <link rel="stylesheet" href="/goottjobplanet/resources/css/gijgo.css">
    <link rel="stylesheet" href="/goottjobplanet/resources/css/animate.min.css">
    <link rel="stylesheet" href="/goottjobplanet/resources/css/slicknav.css">

    <link rel="stylesheet" href="/goottjobplanet/resources/css/style.css">
    <!-- <link rel="stylesheet" href="/goottjobplanet/resources/css/responsive.css"> -->
</head>

<body>


	<jsp:include page="/WEB-INF/views/modules/topbar.jsp" />

    <!-- bradcam_area  -->
    <div class="bradcam_area bradcam_bg_1">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="bradcam_text">
                        <h3>기업정보</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ bradcam_area  -->

    <!-- company_listing_area_start  -->
    <div class="job_listing_area plus_padding">
        <div class="container">
         <!-- featured_candidates_area_start  -->
    <div class="featured_candidates_area candidate_page_padding">
    	<div class="row py-5">
	    	<c:if test="${loginuser.mclass eq true}">
              <a href="write" 
              	 class="btn btn-success btn-sm" style="float:right"> 
              	<span class="text">기업정보 등록</span>
              </a>
			</c:if>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-lg-3">
                <c:forEach items=""></c:forEach>
                    <div class="single_candidates text-center">
                        <div class="thumb">
                            <img src="/goottjobplanet/resources/img/candiateds/1.png" alt="">
                        </div>
                        <a href="#"><h4>Markary Jondon</h4></a>
                        <p>Software Engineer</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3">
                    <div class="single_candidates text-center">
                        <div class="thumb">
                            <img src="/goottjobplanet/resources/img/candiateds/2.png" alt="">
                        </div>
                        <a href="#"><h4>Markary Jondon</h4></a>
                        <p>Software Engineer</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3">
                    <div class="single_candidates text-center">
                        <div class="thumb">
                            <img src="/goottjobplanet/resources/img/candiateds/3.png" alt="">
                        </div>
                        <a href="#"><h4>Markary Jondon</h4></a>
                        <p>Software Engineer</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3">
                    <div class="single_candidates text-center">
                        <div class="thumb">
                            <img src="/goottjobplanet/resources/img/candiateds/4.png" alt="">
                        </div>
                        <a href="#"><h4>Markary Jondon</h4></a>
                        <p>Software Engineer</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3">
                    
                    <div class="single_candidates text-center">
                        <div class="thumb">
                            <img src="/goottjobplanet/resources/img/candiateds/5.png" alt="">
                        </div>
                        <a href="#"><h4>Markary Jondon</h4></a>
                        <p>Software Engineer</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3">
                    <div class="single_candidates text-center">
                        <div class="thumb">
                            <img src="/goottjobplanet/resources/img/candiateds/6.png" alt="">
                        </div>
                        <a href="#"><h4>Markary Jondon</h4></a>
                        <p>Software Engineer</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3">
                    <div class="single_candidates text-center">
                        <div class="thumb">
                            <img src="/goottjobplanet/resources/img/candiateds/7.png" alt="">
                        </div>
                        <a href="#"><h4>Markary Jondon</h4></a>
                        <p>Software Engineer</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3">
                    <div class="single_candidates text-center">
                        <div class="thumb">
                            <img src="/goottjobplanet/resources/img/candiateds/8.png" alt="">
                        </div>
                        <a href="#"><h4>Markary Jondon</h4></a>
                        <p>Software Engineer</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3">
                    <div class="single_candidates text-center">
                        <div class="thumb">
                            <img src="/goottjobplanet/resources/img/candiateds/9.png" alt="">
                        </div>
                        <a href="#"><h4>Markary Jondon</h4></a>
                        <p>Software Engineer</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3">
                    <div class="single_candidates text-center">
                        <div class="thumb">
                            <img src="/goottjobplanet/resources/img/candiateds/10.png" alt="">
                        </div>
                        <a href="#"><h4>Markary Jondon</h4></a>
                        <p>Software Engineer</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3">
                    <div class="single_candidates text-center">
                        <div class="thumb">
                            <img src="/goottjobplanet/resources/img/candiateds/3.png" alt="">
                        </div>
                        <a href="#"><h4>Markary Jondon</h4></a>
                        <p>Software Engineer</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3">
                    <div class="single_candidates text-center">
                        <div class="thumb">
                            <img src="/goottjobplanet/resources/img/candiateds/4.png" alt="">
                        </div>
                        <a href="#"><h4>Markary Jondon</h4></a>
                        <p>Software Engineer</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="pagination_wrap">
                        <ul>
                            <li><a href="#"> <i class="ti-angle-left"></i> </a></li>
                            <li><a href="#"><span>01</span></a></li>
                            <li><a href="#"><span>02</span></a></li>
                            <li><a href="#"> <i class="ti-angle-right"></i> </a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- featured_candidates_area_end  -->
        </div>
    </div>
    <!-- job_listing_area_end  -->

    <!-- footer start -->
    <footer class="footer">
        <div class="footer_top">
            <div class="container">
                <div class="row">
                    <div class="col-xl-3 col-md-6 col-lg-3">
                        <div class="footer_widget wow fadeInUp" data-wow-duration="1s" data-wow-delay=".3s">
                            <div class="footer_logo">
                                <a href="#">
                                    <img src="/goottjobplanet/resources//goottjobplanet/resources/img/logo.png" alt="">
                                </a>
                            </div>
                            <p>
                                finloan@support.com <br>
                                +10 873 672 6782 <br>
                                600/D, Green road, NewYork
                            </p>
                            <div class="socail_links">
                                <ul>
                                    <li>
                                        <a href="#">
                                            <i class="ti-facebook"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-google-plus"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-twitter"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-instagram"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>

                        </div>
                    </div>
                    <div class="col-xl-2 col-md-6 col-lg-2">
                        <div class="footer_widget wow fadeInUp" data-wow-duration="1.1s" data-wow-delay=".4s">
                            <h3 class="footer_title">
                                Company
                            </h3>
                            <ul>
                                <li><a href="#">About </a></li>
                                <li><a href="#"> Pricing</a></li>
                                <li><a href="#">Carrier Tips</a></li>
                                <li><a href="#">FAQ</a></li>
                            </ul>

                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6 col-lg-3">
                        <div class="footer_widget wow fadeInUp" data-wow-duration="1.2s" data-wow-delay=".5s">
                            <h3 class="footer_title">
                                Category
                            </h3>
                            <ul>
                                <li><a href="#">Design & Art</a></li>
                                <li><a href="#">Engineering</a></li>
                                <li><a href="#">Sales & Marketing</a></li>
                                <li><a href="#">Finance</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xl-4 col-md-6 col-lg-4">
                        <div class="footer_widget wow fadeInUp" data-wow-duration="1.3s" data-wow-delay=".6s">
                            <h3 class="footer_title">
                                Subscribe
                            </h3>
                            <form action="#" class="newsletter_form">
                                <input type="text" placeholder="Enter your mail">
                                <button type="submit">Subscribe</button>
                            </form>
                            <p class="newsletter_text">Esteem spirit temper too say adieus who direct esteem esteems
                                luckily.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copy-right_text wow fadeInUp" data-wow-duration="1.4s" data-wow-delay=".3s">
            <div class="container">
                <div class="footer_border"></div>
                <div class="row">
                    <div class="col-xl-12">
                        <p class="copy_right text-center">
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!--/ footer end  -->

    <!-- link that opens popup -->
    <!-- JS here -->
    <script src="/goottjobplanet/resources/js/vendor/modernizr-3.5.0.min.js"></script>
    <script src="/goottjobplanet/resources/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="/goottjobplanet/resources/js/popper.min.js"></script>
    <script src="/goottjobplanet/resources/js/bootstrap.min.js"></script>
    <script src="/goottjobplanet/resources/js/owl.carousel.min.js"></script>
    <script src="/goottjobplanet/resources/js/isotope.pkgd.min.js"></script>
    <script src="/goottjobplanet/resources/js/ajax-form.js"></script>
    <script src="/goottjobplanet/resources/js/waypoints.min.js"></script>
    <script src="/goottjobplanet/resources/js/jquery.counterup.min.js"></script>
    <script src="/goottjobplanet/resources/js/imagesloaded.pkgd.min.js"></script>
    <script src="/goottjobplanet/resources/js/scrollIt.js"></script>
    <script src="/goottjobplanet/resources/js/jquery.scrollUp.min.js"></script>
    <script src="/goottjobplanet/resources/js/wow.min.js"></script>
    <script src="/goottjobplanet/resources/js/nice-select.min.js"></script>
    <script src="/goottjobplanet/resources/js/jquery.slicknav.min.js"></script>
    <script src="/goottjobplanet/resources/js/jquery.magnific-popup.min.js"></script>
    <script src="/goottjobplanet/resources/js/plugins.js"></script>
    <!-- <script src="/goottjobplanet/resources/js/gijgo.min.js"></script> -->
    <script src="/goottjobplanet/resources/js/range.js"></script>



    <!--contact js-->
    <script src="/goottjobplanet/resources/js/contact.js"></script>
    <script src="/goottjobplanet/resources/js/jquery.ajaxchimp.min.js"></script>
    <script src="/goottjobplanet/resources/js/jquery.form.js"></script>
    <script src="/goottjobplanet/resources/js/jquery.validate.min.js"></script>
    <script src="/goottjobplanet/resources/js/mail-script.js"></script>


    <script src="/goottjobplanet/resources/js/main.js"></script>


	<script>
        $( function() {
            $( "#slider-range" ).slider({
                range: true,
                min: 0,
                max: 24600,
                values: [ 750, 24600 ],
                slide: function( event, ui ) {
                    $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] +"/ Year" );
                }
            });
            $( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) +
                " - $" + $( "#slider-range" ).slider( "values", 1 ) + "/ Year");
        } );
        </script>
</body>

</html>
