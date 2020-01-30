<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>공지사항</title>
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
						<h3>공지사항</h3>
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
						<input type="text" name="btitle" class="single-input" value='${ noticeBoard.btitle }'>
					</div>

					<div class="mt-10">
						<!-- <input type="text" name="b_contents" placeholder="내용" class="single-input"> -->
 						<textarea class="single-textarea" name="bcontents" style="height:200px">${ noticeBoard.bcontents }</textarea>
					</div>
					 

				<h4 class="mb-30 noticeWbtnArea noticeMenuArea">
				<c:if test="${sessionScope.loginuser.admin_type==true}">
					<input type="button" id="modifyBtn" class="genric-btn success-border radius " value="수정">
					<input type="button" id="deleteBtn" class="genric-btn danger-border radius " value="삭제">
				</c:if>
					<input type="button" id="listBtn" class="genric-btn success-border radius " value="목록">
				
		          <!-- <c:if test="${ loginuser.email == board.writer }"> --!>
		          <!-- <button id="edit-button" type="button" class="btn btn-success">수정</button> -->
		          <!-- <button id="delete-button" type="button" class="btn btn-success">삭제</button> -->
		          <!-- </c:if> -->
		          <!-- <button id="tolist-button" type="button" class="btn btn-success">목록</button> -->
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

			$('input, textarea').attr({'readonly': 'readonly'});

			$('#modifyBtn').on('click', function(event) {
				var form =
					makeForm('update', ${ noticeBoard.bno }, ${ param.pageNo }, '${ param.searchType }', '${ param.searchKey }');
				form.submit();
			});
			
			$('#deleteBtn').on('click', function(event) {

				var yes = confirm("${ noticeBoard.bno }번 글을 삭제할까요?");
				if (!yes) {
					return;
				}
				
				var form =
					makeForm('delete', ${ noticeBoard.bno }, ${ param.pageNo }, '${ param.searchType }', '${ param.searchKey }');
				form.submit();
			});

			$('#listBtn').on('click', function(event) {
				location.href = "list?pageNo=${ param.pageNo }&searchType=${ param.searchType }&searchKey=${ param.searchKey }";
			});

			function makeForm(action, bno, pageNo, searchType, searchKey, method="get") {
				var form = $('<form></form>');
				form.attr({
					'action': action,
					'method': method
				});
				form.append($('<input>').attr({
					"type": "hidden",
					"name": "bno",
					"value" : bno })
				);
				form.append($('<input>').attr({
					"type": "hidden",
					"name": "pageNo",
					"value" : pageNo })
				);
				form.append($('<input>').attr({
					"type": "hidden",
					"name": "searchType",
					"value" : searchType })
				);
				form.append($('<input>').attr({
					"type": "hidden",
					"name": "searchKey",
					"value" : searchKey })
				);
				
				form.appendTo("body");
				
				return form;
			}
			

		});
	</script>
</body>

</html>
