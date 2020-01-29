<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>인재풀 상세</title>
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
<link rel="stylesheet" href="/goottjobplanet/resources/css/gijgo.css">
<link rel="stylesheet"
	href="/goottjobplanet/resources/css/animate.min.css">
<link rel="stylesheet" href="/goottjobplanet/resources/css/slicknav.css">

<link rel="stylesheet" href="/goottjobplanet/resources/css/style.css">
<link rel="stylesheet"
	href="/goottjobplanet/resources/css/custom-apply.css">
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
						<h3>${ resume.mname }님의 이력서</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/ bradcam_area  -->

	<div class="job_details_area">
		<div class="container">
			<div class="apply_job_form white-bg">
				<!-- <h4>이력서 쓰기</h4> -->
				 <form id="frm" action="mailsending" method="post"> 
					<div class="row">
						<input type="hidden" id="cname" name="cname" value="${ lc.cmember.cname }">
						<input type="hidden" id="mno" name="mno"
							value="${ resume.mno }">
						<div class="col-md-12">
							<div class="resume-table">
								<table>
									<tr>
										<td rowspan="3" id="profileTd">
											<div class="input-group" id="profileImg" style="background-image: url('/goottjobplanet/resources/upload-files/${ resume.gmember.resumePool.profile }')"></div>
										</td>
										<td>이름</td>
										<td><div class="input_field">
												<input type="text" name="mname" id="mname"
													readonly="readonly" value="${ resume.mname }">
											</div></td>
										<td>생년월일</td>
										<td><div class="input_field">
												<input type="text" name="birthDate" id="birthDate"
													readonly="readonly"
													value="${ resume.gmember.birthDate }">
											</div></td>
									</tr>
									<tr>
										<td>이메일</td>
										<td colspan="4"><div class="input_field">
												<input type="text" name="email" id="email"
													readonly="readonly" value="${ resume.email }">
											</div></td>
									</tr>
									<tr>
										<td>전화번호</td>
										<td colspan="4"><div class="input_field">
												<input type="text" name="mphone" id="mphone"
													readonly="readonly" value="${ resume.mphone }">
											</div></td>
									</tr>
<%-- 									<tr>
										<td>자격증</td>
										<td colspan="5"><div class="input_field">

											<select name="license">
												<c:forEach items="${ license }" var="licenses">
													<option value="${ licenses.lno }">${ licenses.lname }</option>
												</c:forEach>
											</select>
 										
										</div></td>
									</tr>
									--%>
									<tr>
										<td>관심 산업군</td>
										<td colspan="2" id="i1noSection">
										<div class="input_field">
											<input type="text" name="industry1" id="industry1" readonly="readonly" value="${ industry.industry1 }">
										</div>
										</td>
										<td colspan="3" id="i2noSection">
										<div class="input_field">
											<input type="text" name="industry2" id="industry2" readonly="readonly" value="${ industry.industries2[0].industry2 }">
										</div>
										</td>

									</tr>
								</table>
							</div>
						</div>

						<div class="col-md-12">
							<div class="input_field">
								<input type="text" name="license" id="license" readonly="readonly" placeholder="자격증" value="${ resume.gmember.resumePool.license }">
							</div>
						</div>				
		
						<div class="col-md-12">
							<div class="input_field">
								<!-- 								<select>
									<option value="">Volvo</option>
									<option value="saab">Saab</option>
									<option value="mercedes">Mercedes</option>
									<option value="audi">Audi</option>
								</select> -->
								<input type="text" name="academic" id="academic"
									readonly="readonly" placeholder="학력 사항" value="${ resume.gmember.resumePool.academic }">
							</div>
						</div>
						<div class="col-md-12">
							<div class="input_field">
								<textarea name="rcareer" id="rcareer" cols="30" rows="10"
									readonly="readonly" placeholder="경력 사항">${ resume.gmember.resumePool.rcareer }</textarea>
							</div>
						</div>
						<div class="col-md-12">
							<div class="input_field">
								<textarea name="prize" id="prize" cols="30" rows="10"
									readonly="readonly" placeholder="수상 내역">${ resume.gmember.resumePool.prize }</textarea>
							</div>
						</div>
						<div class="col-md-12">
							<div class="input_field">
								<textarea name="intro" id="intro" cols="30" rows="10"
									readonly="readonly" placeholder="자기 소개">${ resume.gmember.resumePool.intro }</textarea>
							</div>
						</div>
						<div class="col-md-4">



						</div>
						<div class="col-md-4">
							<div class="submit_btn">
								<button class="boxed-btn3 w-100" id="sendEmail" type="button">이메일 보내기</button>
								<!-- <button id="complete" class="boxed-btn3 w-100" type="button">작성 완료</button> -->
							</div>
						</div>
						<div class="col-md-4">
							<div class="submit_btn">
								<button class="boxed-btn3 w-100" type="button" id="backlist">돌아가기</button>
							</div>
						</div>


					</div>
				</form>
			</div>
		</div>

	</div>

	<!-- footer start -->
	<jsp:include page="/WEB-INF/views/modules/footer.jsp" />
	<!--/ footer end  -->

	<!-- link that opens popup -->
	<!-- JS here -->
	<script
		src="/goottjobplanet/resources/js/vendor/modernizr-3.5.0.min.js"></script>
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



	<!--contact js-->
	<script src="/goottjobplanet/resources/js/contact.js"></script>
	<script src="/goottjobplanet/resources/js/jquery.ajaxchimp.min.js"></script>
	<script src="/goottjobplanet/resources/js/jquery.form.js"></script>
	<script src="/goottjobplanet/resources/js/jquery.validate.min.js"></script>
	<script src="/goottjobplanet/resources/js/mail-script.js"></script>

 
	<script src="/goottjobplanet/resources/js/main.js"></script>
	<script type="text/javascript">
		$(function() {
			$('#backlist').on('click', function(event) {
				location.replace("list?pageNo=${ param.pageNo }&searchType=${ param.searchType }&searchKey=${ param.searchKey }");
			});

			$('#sendEmail').on('click', function(event) {
				alert('이메일을 발송 했습니다.');
				$('#frm').submit();				
			});

		});
	</script>
</body>

</html>