<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>

<!doctype html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>공지사항 등록</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- <link rel="manifest" href="site.webmanifest"> -->
<link rel="shortcut icon" type="image/x-icon"
	href="/goottjobplanet/resources/img/favicon.png">
<!-- Place favicon.ico in the root directory -->

<!-- CSS here -->
<link rel="stylesheet"
	href="/goottjobplanet/resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/goottjobplanet/resources/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="/goottjobplanet/resources/css/magnific-popup.css">
<link rel="stylesheet"
	href="/goottjobplanet/resources/css/font-awesome.min.css">
<link rel="stylesheet"
	href="/goottjobplanet/resources/css/themify-icons.css">
<link rel="stylesheet"
	href="/goottjobplanet/resources/css/nice-select.css">
<link rel="stylesheet" href="/goottjobplanet/resources/css/flaticon.css">
<link rel="stylesheet"
	href="/goottjobplanet/resources/css/jquery-ui.css">
<link rel="stylesheet" href="/goottjobplanet/resources/css/gijgo.css">
<link rel="stylesheet"
	href="/goottjobplanet/resources/css/animate.min.css">
<link rel="stylesheet" href="/goottjobplanet/resources/css/slicknav.css">
<link rel="stylesheet"
	href="/goottjobplanet/resources/css/custom-apply.css">

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
						<h3>공지사항 수정</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/ bradcam_area  -->

	<!-- job_listing_area_start  -->
	<div class="job_listing_area plus_padding">
		<div class="container">

			<div class="col-lg-8 col-md-8 noticeWriteBox">
				<h3 class="mb-30"></h3>
				<form action="update" method="post" id="updateForm">
					<input type="hidden" name="bno" value="${ noticeBoard.bno }">
		          	<input type="hidden" name="pageNo" value="${ param.pageNo }">
		          	<input type="hidden" id="searchType" name="searchType" value="${ param.searchType }">
  				  	<input type="hidden" id="searchKey" name="searchKey" value="${ param.searchKey }">
				
					<div class="mt-10">
						<input type="text" id="btitle" name="btitle" placeholder="제목" class="single-input" value="${ noticeBoard.btitle }">
					</div>

					<div class="mt-10">
						<!-- <input type="text" name="b_contents" placeholder="내용" class="single-input"> -->
 						<textarea class="single-textarea" id="bcontents" name="bcontents" placeholder="내용">${ noticeBoard.bcontents }</textarea>
					</div>
					 
				<h4 class="mb-30 noticeWbtnArea noticeMenuArea">
					<input type="button" id="updateBtn" class="genric-btn success-border radius " value="수정">
					<input type="button" id="cancelBtn" class="genric-btn primary-border radius " value="취소">
				</h4>
				<!-- <input type="hidden" name="bno" value="1"> -->
				<input type="hidden" name="mno" value="1">
				<!-- <input type="hidden" name="b_Date" value="1"> -->
				<%-- <input type="hidden" name="uploader" value="${ loginuser.memberId }">${ sessionScope.loginuser.memberId } --%>
				</form>
			</div>

		</div>
	</div>
	<!-- job_listing_area_end  -->

	<!-- footer start -->
	<footer class="footer">
		<div class="footer_top">
			<div class="container">
				<div class="row">
					<div class="col-xl-3 col-md-6 col-lg-3">
						<div class="footer_widget wow fadeInUp" data-wow-duration="1s"
							data-wow-delay=".3s">
							<div class="footer_logo">
								<a href="#"> <img
									src="/goottjobplanet/resources/img/logo.png" alt="">
								</a>
							</div>
							<p>
								finloan@support.com <br> +10 873 672 6782 <br> 600/D,
								Green road, NewYork
							</p>
							<div class="socail_links">
								<ul>
									<li><a href="#"> <i class="ti-facebook"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-google-plus"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-twitter"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-instagram"></i>
									</a></li>
								</ul>
							</div>

						</div>
					</div>
					<div class="col-xl-2 col-md-6 col-lg-2">
						<div class="footer_widget wow fadeInUp" data-wow-duration="1.1s"
							data-wow-delay=".4s">
							<h3 class="footer_title">Company</h3>
							<ul>
								<li><a href="#">About </a></li>
								<li><a href="#"> Pricing</a></li>
								<li><a href="#">Carrier Tips</a></li>
								<li><a href="#">FAQ</a></li>
							</ul>

						</div>
					</div>
					<div class="col-xl-3 col-md-6 col-lg-3">
						<div class="footer_widget wow fadeInUp" data-wow-duration="1.2s"
							data-wow-delay=".5s">
							<h3 class="footer_title">Category</h3>
							<ul>
								<li><a href="#">Design & Art</a></li>
								<li><a href="#">Engineering</a></li>
								<li><a href="#">Sales & Marketing</a></li>
								<li><a href="#">Finance</a></li>
							</ul>
						</div>
					</div>
					<div class="col-xl-4 col-md-6 col-lg-4">
						<div class="footer_widget wow fadeInUp" data-wow-duration="1.3s"
							data-wow-delay=".6s">
							<h3 class="footer_title">Subscribe</h3>
							<form action="#" class="newsletter_form">
								<input type="text" placeholder="Enter your mail">
								<button type="submit">Subscribe</button>
							</form>
							<p class="newsletter_text">Esteem spirit temper too say
								adieus who direct esteem esteems luckily.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="copy-right_text wow fadeInUp" data-wow-duration="1.4s"
			data-wow-delay=".3s">
			<div class="container">
				<div class="footer_border"></div>
				<div class="row">
					<div class="col-xl-12">
						<p class="copy_right text-center">
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This template is made with <i
								class="fa fa-heart-o" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
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
	<script	src="/goottjobplanet/resources/js/vendor/modernizr-3.5.0.min.js"></script>
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

	
	<script type="text/javascript">
		$(function() {

			$('#updateBtn').on('click', function(event) {

				if ($('#btitle').val() == '') {
					alert('제목을 입력하세요');
					$('#btitle').focus();
					return;
				}
				if ($('#bcontents').text() == '') {
					alert('내용을 입력하세요');
					$('#bcontents').focus();
					return;
				}

				$('#updateForm').submit();
			});

			$('#cancelBtn').on('click', function(event) {
				location.href = 'detail?bno=${ noticeBoard.bno }&pageNo=${ param.pageNo }&searchType=${ param.searchType }&searchKey=${ param.searchKey }';
			});
			
		});
	</script>
</body>

</html>
