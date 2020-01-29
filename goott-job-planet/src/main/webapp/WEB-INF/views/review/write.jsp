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
    <form id="companyInfo" role="form" action="write" method="post">
	<input type="hidden" name="action2" value="review">
	<input type="hidden" name='cno2' value='1'>
	<input type="hidden" name='mno2' value='${ loginuser.mno }'>
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="bradcam_text">
                        <h3>기업 후기</h3>
                    </div>
                </div>
            </div>
        </div>
        </form>
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
                                    <a href="#"><h4>기업 정보</h4></a>
                                    <div class="links_locat d-flex align-items-center">
                                        <div class="compInfo">
                                             <i class="fa fa-map-marker"></i>
                                             <input type="hidden" name="compLocation" id="compLocation" value="${ company.location }">
                                        </div>
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <div class="compInfo">
                                            <i class="fa fa-clock-o"></i>
                                            <input type="hidden" name="compEdate" id="compEdate" value="${ company.edate }">
                                            
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
                   			
                            <h6>작성자: ${ review.mno }</h6>
                            <li>작성일: <span></span></li>
                            
                            <p class="form-control" id="review-text" name="review-text" cols="30" rows="10" readonly>
                            
                            
                            ${review.review}
                            
                            </p>
							
							
							                            
                            <div id="review-list-container" class=panel-body>
                            
                            <jsp:include page="review-list.jsp" />
                            
                            </div>
                        </div>
                        
                    </div>
                    <br>
                    <button id="write-show-button" class="boxed-btn3 float-right" type="button">기업후기 작성</button>
                    <button id='modalModBtn' type="button" class="boxed-btn3 float-right">기업후기 수정</button>
                    <br><br>
                     

                    
                
                </div>
                <div class="col-lg-4">
                    <div class="job_sumary">
                        <div class="summery_header">
                            <h3>기업 정보</h3>
                        </div>
                        <div class="compDetailInfo">
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

						<form id="review-form" role="form" action="write" method="post">
						<input type="hidden" name="action">
						<input type="hidden" name='cno' value='1'>
						<input type="hidden" id="modal-replyer" name='mno' value='${ loginuser.mno }'>
						
							<h4>기업 후기 작성하기</h4>
							<div class="row">
								<div class="col-md-6">
									<div class="input_field">
									
										<input type="text" id="review-name" name="review-name" value="${ loginuser.mname }" readonly>
										
									</div>
								</div>
								<div class="col-md-6">
									<div class="input_field">
										<input type="text" id="review-email" name="review-email" value="${ loginuser.email }" readonly>
									</div>
								</div>

								<div class="col-md-12">
									<div class="input_field">
										<textarea class="form-control" name="review-area" id="review-area" cols="30" rows="10" placeholder="기업후기를 입력해주세요"></textarea>
									</div>
								</div>
								<div class="col-md-12">
									<div class="submit_btn">
										<button id="write-button" style="margin-left: 10px"
											class="boxed-btn3 float-right">등록</button>
										<button id="tolist-button" style="margin-left: 10px"
											class="boxed-btn3 float-right" type="button">목록</button>
										<button class="boxed-btn3 float-right">다시쓰기</button>
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
			location.href = "/goottjobplanet/company/list";
		});


		$('#write-show-button').on('click', function(event) {

			
			//show boot-strap modal
			/* $('#review-name').val(${member.mname});
			$('#review-email').val(${member.email}); */
			$('#review-area').val("");
			$('#review-modal').modal('show');
			
		});
		
		$('#write-button').on('click', function(event) {

			event.preventDefault();
			event.stopPropagation()

			if ($('#review-area').val().length == 0) {
				alert("내용을 입력하세요")
				$('#review-area').focus();
				return;
			}
			
			var values = $('#review-form').serializeArray();
			
			$.ajax({
				"url": "/goottjobplanet/review/write",
				"method": "post",
				"data": values,
				"success": function(data, status, xhr) {
					$('#review-modal').modal('hide');
					$('#review-list-container').load('/goott-job-planet/review/list-by/${review.cno}');
					
				},
				"error": function(xhr, status, err){
					alert('리뷰 쓰기 실패');
					
				}
			});
		});

		//$('.reply-delete').on('click', function(event) {
		$('#review-list-container').on('click', '.review-delete', function(event) {
			var rno = $(this).attr('data-rno'); // this : 이벤트 발생 객체

			var yes = confirm(rno + "번 댓글을 삭제할까요?");
			if (!yes) return;

			$.ajax({
				"url": "/goott-job-planet/review/delete/" + rno,
				"method": "delete",
				//"data": { "rno" : rno },
				"success": function(data, status, xhr) {
					//댓글 목록 갱신
					$('#reply-list-container').load("/goott-job-planet/review/list-by/${ review.cno }");
				},
				"error": function(xhr, status, err) {
				}
			});
		});

		////////////////////////////////////////////////////////
		
		$('#review-list-container').on('click', '.review-update', function(event) {

			var rno = $(this).attr("data-rno"); // 수정 button에 설정된 rno
			var li = $("li[data-rno=" + rno + "]"); // rno와 일치하는 li
			var p = li.find('p'); // li에 포함된 p
			//alert(p.text());

			$('#review-form input[name!=bno]').attr({ "readonly": false }).val("");
			$('#modal-replyer').attr({ "readonly": true }).val("");
			$('#review-area').val( $.trim(p.text()) );			

			$('#modalModBtn').css({ "display": "inline" });

			$('#review-form input[name=rno]').val(rno);
			
			//show boot-strap modal
			$('#review-modal').modal('show');
	
		});

		$('#modalModBtn').on('click', function(event) {			
			var data = {
				"rno": $("#review-form input[name=rno]").val(),
				"reply": $("#review-form input[name=review]").val()
			};
			
			$.ajax({
				"url": "/goott-job-planet/review/update",
				"method": "put",
				"data": JSON.stringify(data), // JSON Object -> JSON String
				"contentType": "application/json", // put method 처리를 위해 설정				
				"success": function(result, status, xhr) {
					$('#review-modal').modal('hide');
					$('#review-list-container')
						.load("/goott-job-planet/review/list-by/${ review.cno }");
				},
				"error": function(xhr, status, err) {
					alert('수정 실패');
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