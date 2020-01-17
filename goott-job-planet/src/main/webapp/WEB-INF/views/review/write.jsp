<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>

<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Goott job Planet</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <!-- <link rel="stylesheet" href="/goottjobplanet/resources/css/bootstrap.min.css"> -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.css">
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
    <!-- <link rel="stylesheet" href="css/responsive.css"> -->
</head>

<body>
    <!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->
        
        <jsp:include page="/WEB-INF/views/modules/topbar.jsp" />



    <!-- bradcam_area  -->
    <div class="bradcam_area bradcam_bg_1">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="bradcam_text">
                        <h3>기업 후기</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ bradcam_area  -->

    <div class="job_details_area">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="job_details_header">
                        <div class="single_jobs white-bg d-flex justify-content-between">
                            <div class="jobs_left d-flex align-items-center">
                                <div class="thumb">
                                    <img src="img/svg_icon/1.svg" alt="">
                                </div>
                                <div class="jobs_conetent">
                                    <a href="#"><h4>${ c_member.cname }</h4></a>
                                    <div class="links_locat d-flex align-items-center">
                                        <div class="location">
                                            <p> <i class="fa fa-map-marker"></i>${ company.location }</p>
                                        </div>
                                        <div class="location">
                                            <p> <i class="fa fa-clock-o"></i>${ company.edate }</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="jobs_right">
                                <div class="apply_now">
                                    <a class="heart_mark" href="#"> <i class="ti-heart"></i> </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="descript_wrap white-bg">
                        <div class="single_wrap">
                            <h4>기업 면접 후기</h4>
                            
                            <h6>${ member.mname }</h6>
                            <h6>${ review.review_date }</h6>
                            
                            <p class="form-control" id="review-text" name="review-text" cols="30" rows="10" readonly>${review.review}</p>
                            
                            <div id="write-list-container" class=panel-body>
                            
                            <jsp:include page="write-list.jsp" />
                            
                            </div>
                        </div>
                        
                    </div>
                    <br>
                    <button id="write-show-button" class="boxed-btn3 float-right" type="button">기업후기 작성</button>
                    <br><br>
                     

                    
                
                </div>
                <div class="col-lg-4">
                    <div class="job_sumary">
                        <div class="summery_header">
                            <h3>기업 정보</h3>
                        </div>
                        <div class="job_content">
                            <ul>
                                <li>홈페이지: <span>${ company.cwebsite }</span></li>
                                <li>사원수: <span>${ company.employees }</span></li>
                                <li>매출액: <span>${ company.sales }</span></li>
                                <li>기업형태: <span>${ company.ctype }</span></li>
                            </ul>
                        </div>
                    </div>
                  
                </div>
            </div>
        </div>
    </div>
           

    <!-- footer start -->
    <footer class="footer">
        <div class="footer_top">
            <div class="container">
                <div class="row">
                    <div class="col-xl-3 col-md-6 col-lg-3">
                        <div class="footer_widget wow fadeInUp" data-wow-duration="1s" data-wow-delay=".3s">
                            <div class="footer_logo">
                                <a href="#">
                                    <img src="img/logo.png" alt="">
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

<!-- modal -->
	<div class="job_details_area modal fade" id="review-modal" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
					<div class="apply_job_form" >

						<form id="write-form" role="form" action="write" method="post">
							<h4>기업 후기 작성하기</h4>
							<div class="row">
								<div class="col-md-6">
									<div class="input_field">
									
										<input type="text" id="review-name" name="review-name" value="${ member.mname }">
										
									</div>
								</div>
								<div class="col-md-6">
									<div class="input_field">
										<input type="text" id="review-email" value="${ member.email }">
									</div>
								</div>

								<div class="col-md-12">
									<div class="input_field">
										<textarea class="form-control" name="review" id="review-area" cols="30" rows="10" placeholder="기업후기를 입력해주세요">${ review.review }</textarea>
									</div>
								</div>
								<div class="col-md-12">
									<div class="submit_btn">
										<button id="write-button" style="margin-left: 10px"
											class="boxed-btn3 float-right" type="submit">등록</button>
										<button id="tolist-button" style="margin-left: 10px"
											class="boxed-btn3 float-right" type="button">목록</button>
										<button class="boxed-btn3 float-right" type="reset">다시쓰기</button>
									</div>
								</div>
							</div>
						</form>
				</div>
			</div>
		</div>
	</div>

	<!-- link that opens popup -->
    <!-- JS here -->
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<!--     
    <script src="js/vendor/modernizr-3.5.0.min.js"></script>
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/ajax-form.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src="js/scrollIt.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/nice-select.min.js"></script>
    <script src="js/jquery.slicknav.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/gijgo.min.js"></script>
 -->


    <!--contact js-->
<!--     
    <script src="js/contact.js"></script>
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/jquery.form.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/mail-script.js"></script>
 -->

    <!-- <script src="js/main.js"></script> -->
    
    <script type="text/javascript">
    $(function() {
		$('#tolist-button').on('click', function(event) {
			location.href = "list.action";
		});


		$('#write-show-button').on('click', function(event) {

			
			//show boot-strap modal
			/* $('#review-name').val(${member.mname});
			$('#review-email').val(${member.email}); */
			$('#review-area').val("");
			$('#review-modal').modal('show');
			
		});
		
		$('#write-button').on('click', function(event) {

			var values = $('#write-form').serializeArray();
			
			$.ajax({
				"url": "/gjob/review/write",
				"method": "post",
				"data": values,
				"success": function(data, status, xhr) {
					$('#review-modal').modal('hide');
				},
				
				"error": function(xhr, status, err){
					alert('리뷰 쓰기 실패');
					
				}
			});
		});
			
	});

	/* if ($('#review').val() == '') {
		alert('내용을 입력하세요');
		$('#review').focus();
		
		return; */

  </script>
    
</body>

</html>