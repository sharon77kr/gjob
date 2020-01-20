<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Job Board</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- <link rel="manifest" href="site.webmanifest"> -->
<link rel="shortcut icon" type="image/x-icon"
	href="/goottjobplanet/resources/img/favicon.png">
<!-- Place favicon.ico in the root directory -->

<!-- CSS here -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.css">
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
<link rel="stylesheet" href="/goottjobplanet/resources/css/style.css">
<!-- <link rel="stylesheet" href="/goottjobplanet/resources/css/responsive.css"> -->
</head>

<body>
	<!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

	<!-- header-start -->
	<jsp:include page="/WEB-INF/views/modules/topbar.jsp" />
	<!-- header-end -->

	<!-- bradcam_area  -->
	<div class="bradcam_area bradcam_bg_1">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="bradcam_text">
						<h3>blog</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/ bradcam_area  -->


	<!--================Blog Area =================-->
	<section class="blog_area section-padding">
		<div class="container">
			<div class="row">
				<button id="licensemgmt" class="boxed-btn3 float-right"
					type="button">자격증 관리</button>
				<button id="industrymgmt" class="boxed-btn3 float-right"
					type="button">산업군 분류 관리</button>
			</div>
<!-- 				<input type="hidden" id="choice" name=""> --> 
		</div>
	</section>
	<!--================Blog Area =================-->

	<!-- footer start -->
	<jsp:include page="/WEB-INF/views/modules/footer.jsp" />
	<!--/ footer end  -->

	<!-- modal -->
	<div class="job_details_area modal fade" id="license-modal"
		role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="apply_job_form">

					<form id="addlicenseform" role="form" action="list" method="post">
									
									
						<h4>자격증 관리</h4>
						<div class="row">
							<input type="hidden" id="" name="action" value="license">
							<!-- <div class="col-md-12">등록된 자격증 목록</div> -->

							<div class="col-md-6">
								<div class="input_field">
									<input type="text" id="licence-name" name="lname"
										placeholder="자격증이름">
								</div>
							</div>
							<div class="col-md-6">
								<div class="input_field">
									<input type="text" id="license-agency" name="institution"
										placeholder="발급기관">
								</div>
							</div>



							<div class="col-md-12">
								<div class="submit_btn">
									<button id="write-license" style="margin-left: 10px"
										class="boxed-btn3 float-right" type="submit">등록</button>
									<button id="cancel-license" style="margin-left: 10px"
										class="boxed-btn3 float-right" type="button">취소</button>
									<button class="boxed-btn3 float-right" type="reset">다시쓰기</button>
								</div>
							</div>
						</div>
						
						
						
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<!-- modal2 -->
	<div class="job_details_area modal fade" id="industry-modal"
		role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="apply_job_form">

					<form id="addindustryform" role="form" action="list" method="post">
									
									
						<h4>산업군 분류 관리</h4>
						<div class="row">
							<input type="hidden" id="" name="action" value="industry">
							<!-- <div class="col-md-12">등록된 산업군 목록</div> -->

							<div class="col-md-6">
								<div class="input_field">
									<input type="text" id="industry1" name="industry1"
										placeholder="1차 산업군">
								</div>
							</div>
							<div class="col-md-6">
								<div class="input_field">
									<input type="text" id="industry2" name="industry2"
										placeholder="2차 산업군">
								</div>
							</div>



							<div class="col-md-12">
								<div class="submit_btn">
									<button id="write-industry" style="margin-left: 10px"
										class="boxed-btn3 float-right" type="submit">등록</button>
									<button id="cancel-industry" style="margin-left: 10px"
										class="boxed-btn3 float-right" type="button">취소</button>
									<button class="boxed-btn3 float-right" type="reset">다시쓰기</button>
								</div>
							</div>
						</div>
						
						
						
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- JS here -->
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<!--     <script src="/goottjobplanet/resources/js/vendor/modernizr-3.5.0.min.js"></script>
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
    <script src="/goottjobplanet/resources/js/gijgo.min.js"></script>

    contact js
    <script src="/goottjobplanet/resources/js/contact.js"></script>
    <script src="/goottjobplanet/resources/js/jquery.ajaxchimp.min.js"></script>
    <script src="/goottjobplanet/resources/js/jquery.form.js"></script>
    <script src="/goottjobplanet/resources/js/jquery.validate.min.js"></script>
    <script src="/goottjobplanet/resources/js/mail-script.js"></script>

    <script src="/goottjobplanet/resources/js/main.js"></script> -->
	<script>
		$(function() {
			$('#licensemgmt').on('click', function(event) {

				//show boot-strap modal
				/* $('#review-name').val(${member.mname});
				$('#review-email').val(${member.email}); */
				//$('#review-area').val("");
//				$('#choice').attr('name', 'license');
				$('#license-modal').modal('show');

			});

			$('#write-license').on('click', function(event) {

				if ($('#licence-name').val().length == 0) {
					alert("자격증 이름을 입력하세요")
					return;
				} else if ($('#licence-agency').val().length == 0) {
					alert("시행 기관을 입력하세요")
					return;
				}

				var values = $('#addlicenseform').serializeArray();

				$.ajax({
					"url" : "/goottjobplanet/manage/list",
					"method" : "post",
					"data" : values,
					"success" : function(data, status, xhr) {
						$('#license-modal').modal('hide');
					},

					"error" : function(xhr, status, err) {
						alert('등록 실패');
					}
				});
			});

			$('#cancel-license').on('click', function(event) {
				$('#license-modal').modal('hide');
			});

			$('#industrymgmt').on('click', function(event) {

//				$('#choice').attr('name', 'industry');
				$('#industry-modal').modal('show');

			});

			$('#write-industry').on('click', function(event) {

				if ($('#industry1').val().length == 0) {
					alert("1차산업군 분류를 입력하세요")
					return;
				} else if ($('#industry2').val().length == 0) {
					alert("2차산업군 분류를 입력하세요")
					return;
				}

				var values = $('#addindustryform').serializeArray();

				$.ajax({
					"url" : "/goottjobplanet/manage/list",
					"method" : "post",
					"data" : values,
					"success" : function(data, status, xhr) {
						$('#industry-modal').modal('hide');
					},

					"error" : function(xhr, status, err) {
						alert('등록 실패');
					}
				});
			});

			$('#cancel-industry').on('click', function(event) {
				$('#industry-modal').modal('hide');
			});
			
			
			/* 		$('#addReplyBtn').on('click', function(event) {

			 $('#reply-form input[name!=bno]').attr({ "readonly": false }).val("");			

			 $('#modalModBtn, #modalRemoveBtn').css({ "display": "none" });
			 $('#modalRegisterBtn').css({ "display": "inline" });

			 $('#reply-form input[name=rno]').val('0');
			 $('#reply-form input[name=action]').val('reply');
			
			 //show boot-strap modal
			 $('#reply-modal').modal('show');
			
			 }); */

			/*         $('#datepicker').datepicker({
			 iconsLibrary: 'fontawesome',
			 icons: {
			 rightIcon: '<span class="fa fa-caret-down"></span>'
			 }
			 });
			 $('#datepicker2').datepicker({
			 iconsLibrary: 'fontawesome',
			 icons: {
			 rightIcon: '<span class="fa fa-caret-down"></span>'
			 }
			 */
		});
	</script>
</body>
</html>