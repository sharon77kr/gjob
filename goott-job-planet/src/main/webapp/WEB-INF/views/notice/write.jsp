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

<body id="noticebody">


	<jsp:include page="/WEB-INF/views/modules/topbar.jsp" />

	<!-- bradcam_area  -->
	<div class="bradcam_area bradcam_bg_1">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="bradcam_text">
						<h3>공지사항 등록</h3>
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
				<form action="write" method="post">
					<div class="mt-10">
						<input type="text" name="btitle" placeholder="제목" class="single-input">
					</div>

					<div class="mt-10">
						<!-- <input type="text" name="b_contents" placeholder="내용" class="single-input"> -->
 						<textarea class="single-textarea" name="bcontents" placeholder="내용"></textarea>
					</div>
					 
				<h4 class="mb-30 noticeWbtnArea noticeMenuArea">
					<input type="submit" class="genric-btn success-border radius " value="등록">
					<input type="button" id="listBtn" class="genric-btn success-border radius " value="목록">
				</h4>
				<!-- <input type="hidden" name="bno" value="1"> -->
				<input type="hidden" name="mno" value="${ loginuser.mno }">
				<!-- <input type="hidden" name="b_date" value="1"> -->
				<%-- <input type="hidden" name="uploader" value="${ loginuser.memberId }">${ sessionScope.loginuser.memberId } --%>
				</form>
			</div>

		</div>
	</div>
	<!-- job_listing_area_end  -->

	<!-- footer start -->
	<jsp:include page="/WEB-INF/views/modules/footer.jsp" />
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
			if(${ loginuser.admin_type == false } || ${ empty loginuser } ){
				location.href = "list";
				return;
			}

			$('#listBtn').on('click', function(event) {
				location.href = "list?pageNo=${ param.pageNo }&searchType=${ param.searchType }&searchKey=${ param.searchKey }";
			});
			
		});
	</script>
</body>

</html>
