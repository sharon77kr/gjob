<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>이력서 관리</title>
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
						<h3>이력서</h3>
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
				<form id="resumeform" action="write" method="post" enctype="multipart/form-data">
					<div class="row">
						<input type="hidden" id="mno" name="mno"
							value="${ loginuser.mno }">
						<div class="col-md-12">
							<div class="resume-table">
								<table>
									<tr>
									                            
										<td rowspan="3" id="profileTd">
											<div class="input-group" id="profileImg"></div>
	                                    	<div class="input-group">
		                                        <div class="input-group-prepend">
		                                          <button type="button" id="inputGroupFileAddon03"><i class="fa fa-cloud-upload" aria-hidden="true"></i>
		                                          </button>
		                                        </div>
		                                        <div class="custom-file">
		                                          <input type="file" class="custom-file-input" id="inputGroupFile03" aria-describedby="inputGroupFileAddon03" name="profilem">
		                                          <label class="custom-file-label" for="inputGroupFile03">프로필 사진</label>
		                                        </div>
	                                      	</div>

									<!-- <input type="file" class=""
											name="profileimg"> --></td>
										<td>이름</td>
										<td><div class="input_field">
												<input type="text" name="mname" id="mname"
													readonly="readonly" value="${ loginuser.mname }" disabled="disabled">
											</div></td>
										<td>생년월일</td>
										<td><div class="input_field">
												<input type="text" name="birthDate" id="birthDate"
													readonly="readonly"
													value="${ loginuser.gmember.birthDate }" disabled="disabled">
											</div></td>
									</tr>
									<tr>
										<td>이메일</td>
										<td colspan="4"><div class="input_field">
												<input type="text" name="email" id="email"
													readonly="readonly" value="${ loginuser.email }" disabled="disabled">
											</div></td>
									</tr>
									<tr>
										<td>전화번호</td>
										<td colspan="4"><div class="input_field">
												<input type="text" name="mphone" id="mphone"
													readonly="readonly" value="${ loginuser.mphone }" disabled="disabled">
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
										<td colspan="2" id="i1noSection"><select name="i1no" id="i1no">
												<option value="0">1차 산업군</option>
												<c:forEach items="${ industries1 }" var="industry1">
													<option value="${ industry1.i1no }">${ industry1.industry1 }</option>
												</c:forEach>
										</select></td>
										<td colspan="3" id="i2noSection"><select name="i2no" id="i2no" disabled="disabled">
												<option value="0">2차 산업군</option>
										</select></td>

									</tr>
								</table>
							</div>
						</div>

						<div class="col-md-12">
							<div class="input_field">
								<input type="text" name="license" id="license" placeholder="자격증">
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
									placeholder="학력 사항">
							</div>
						</div>
						<div class="col-md-12">
							<div class="input_field">
								<textarea name="rcareer" id="rcareer" cols="30" rows="10"
									placeholder="경력 사항"></textarea>
							</div>
						</div>
						<div class="col-md-12">
							<div class="input_field">
								<textarea name="prize" id="prize" cols="30" rows="10"
									placeholder="수상 내역"></textarea>
							</div>
						</div>
						<div class="col-md-12">
							<div class="input_field">
								<textarea name="intro" id="intro" cols="30" rows="10"
									placeholder="자기 소개"></textarea>
							</div>
						</div>
						<div class="col-md-4">

							<div class="switch-wrap d-flex justify-content-between">
								<p>인재풀에 공개 (기업 회원만 열람 가능)</p>
								<div class="primary-checkbox">
									<input type="checkbox" name="checkbox" id="default-checkbox" checked> <label for="default-checkbox"></label>
									<input type="hidden" id="ptype" name="ptype" value="true">
								</div>
							</div>

						</div>
						<div class="col-md-4">
							<div class="submit_btn">
								<button class="boxed-btn3 w-100" id="complete" type="button">작성 완료</button>
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
				location.replace("/goottjobplanet/resumepool/list");
			});

			$('#complete').on('click', function(event) {
				//console.log($("#default-checkbox").is(":checked"));
				if($("#default-checkbox").is(":checked") == true){
					$('#ptype').attr('value', 'true');
				} else {
					$('#ptype').attr('value', 'false');
				}

				//
				if ($('#mno').val().length == 0) {
					alert("세션 정보가 없습니다.");
					location.href("/goottjobplanet/account/login");
					return;
				} else if ($('#inputGroupFile03').val().length == 0) {
					alert("사진")
					return;
				} else if ($('#mname').val().length == 0){
					alert("이름")
					return;
				} else if ($('#birthDate').val().length == 0){
					alert("생년월일")
					return;
				} else if ($('#mphone').val().length == 0){
					alert("전화번호")
					return;
				} else if ($('#i2no').val() == 0){
					alert("산업군")
					return;
				} else if ($('#academic').val().length == 0){
					alert("학력")
					return;
				} else if ($('#intro').val().length == 0){
					alert("자기소개")
					return;
				} 

				
				//console.log($('#inputGroupFile03').val());
				$('#resumeform').submit();
				//console.log($('#ptype').attr('value'));
				
			});

			$('#i1noSection li:first-child').remove();
			
			$('#i1no').on('change', function(event) {
				var industry1 = $(this).val();
				var industry2 = null;
				if(industry1 == '0' || industry1 == null || industry1 == '' ){
					$('#i2no').prop("disabled",true);
					$('#i2no').empty();
					$('<option></option>').attr("value", 0).text("2차 산업군").appendTo('#i2no');
					
				} else {
					$('#i2no').prop("disabled",false);
					$('div[class="nice-select disabled"]').attr('class','nice-select');
					$('#i2noSection .current').text("2차 산업군");
					$.ajax({
						"url": "/goottjobplanet/manage/getindustry2",
						"method": "get",
						"data": { "industry1": industry1 },
						"success": function(result, status, xhr) {
							industry2 = result[0].industries2;
							$('#i2no').empty();
							$('#i2noSection li').remove();
							$('<option></option>').attr("value", 0).text("2차 산업군").appendTo('#i2no');
							for (var i = 0; i < Object.keys(industry2).length; i++){
								$('<option></option>').attr("value", industry2[i].i2no).text(industry2[i].industry2).appendTo('#i2no');
							}
							for (var i = 0; i < Object.keys(industry2).length; i++){
								$('<li></li>').attr({"data-value": industry2[i].i2no, "class": "option"}).text(industry2[i].industry2).appendTo('#i2noSection ul');
							}
							
						},
						"error": function(xhr, status, err) {
							alert("2차 산업군 조회 실패");
							console.log(err);
						}
						
					})
				}

			});

			$('#inputGroupFile03').on('change', function(event) {

				if (this.files && this.files[0]) { //파일 선택기의 파일 선택 확인
					var reader = new FileReader();

					//파일을 다 읽었을 때 호출할 함수 지정
					reader.onload = function(e) {
						//console.log(e.target.result);
						$('#profileImg').css('background-image', 'url("' + e.target.result + '")');
						//url("paper.gif");
					}; 
				
					reader.readAsDataURL(this.files[0]); //파일 읽기
				}
			
			});	
		
		});
	</script>
</body>

</html>