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

<link rel="stylesheet" href="/goottjobplanet/resources/css/select2.css">
<link rel="stylesheet" href="/goottjobplanet/resources/css/custom-apply.css">
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
						<h3>관리자 페이지</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/ bradcam_area  -->


	<!--================Blog Area =================-->
	<style>

    	.genric-btn {width:40%; box-sizing: border-box; padding:50px; font-size: x-large; button:hover;}
	</style>
     
     <section class="blog_area section-padding">
      <div class="container">
         <div class="row">
            <button id="applymgmt" class="genric-btn success" type="button" href="/goottjobplanet/account/memberlist" style="margin:0 5%;">회원 관리</button>
            <button id="industrymgmt" class="genric-btn success" type="button" style="margin:0 5%;">산업군 분류 관리</button>
         </div>
<!--             <input type="hidden" id="choice" name=""> --> 
      </div>
   </section>

	<!--================Blog Area =================-->

	<!-- footer start -->
	<jsp:include page="/WEB-INF/views/modules/footer.jsp" />
	<!--/ footer end  -->

	<!-- modal -->
	<!-- 
	<div class="job_details_area modal fade" id="license-modal"
		role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="apply_job_form">

					<form id="addlicenseform" role="form" action="list" method="post">
									
									
						<h4>자격증 관리</h4>
						<div class="row">
							<input type="hidden" id="" name="action" value="license">
							

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
	 -->
	<!-- modal2 -->
	<div class="job_details_area modal fade" id="industry-modal"
		role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="apply_job_form">

					<form id="addindustryform" role="form">
					<!-- <form id="addindustryform" role="form" action="list" method="post"> -->
									
									
						<h4>산업군 분류 관리</h4>
						<div class="row">
							<!-- <input type="hidden" id="" name="action" value="industry"> -->
							<!-- <div class="col-md-12">등록된 산업군 목록</div> -->

							<div class="col-md-6">
								<div class="input_field">
									<select id="industry1" name="industry1">
										<option value="0">새로 입력</option>
										<c:forEach items="${ industry1List }" var="industry1">
											<option value="${ industry1.i1no }">${ industry1.industry1 }</option>
										</c:forEach>
									</select>
									<input type="text" id="addindustry1" name="addindustry1"
										placeholder="1차 산업군" value="">
								</div>
							</div>
							<div class="col-md-6">
								<div class="input_field">
									<select id="industry1from2" name="industry1from2" disabled="disabled">
										<option value="0">새로 입력</option>
									</select>
									<input type="text" id="addindustry2" name="addindustry2"
										placeholder="2차 산업군">
								</div>
							</div>
<!-- 							<div class="col-md-12">
								<div id="verifyArea" style="visibility:hidden">2차 산업군이 이미 존재 합니다.</div>
								<input type="hidden" name="verify" value="false">
							</div>
 -->							


							<div class="col-md-12">
								<div class="submit_btn">
									<button id="write-industry" style="margin-left: 10px"
										class="boxed-btn3 float-right" type="button">등록</button>
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
    <script src="/goottjobplanet/resources/js/select2.js"></script>

	<script>
		$(function() {

			$('#applymgmt').on('click', function(event) {
				
				$(location).attr('href', '/goottjobplanet/account/memberlist')

			});
			
			$('#industry1').select2();
			$('#industry1from2').select2();
/* 			
>>>>>>> branch 'master' of https://github.com/sharon77kr/gjob.git
			$('#licensemgmt').on('click', function(event) {

				//show boot-strap modal
				// $('#review-name').val(${member.mname});
				//$('#review-email').val(${member.email});
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
						//$('#license-modal').modal('hide');
						
					},

					"error" : function(xhr, status, err) {
						alert('등록 실패');
					}
				});
			});

			$('#cancel-license').on('click', function(event) {
				$('#license-modal').modal('hide');
			});
 */
			$('#industrymgmt').on('click', function(event) {

//				$('#choice').attr('name', 'industry');
				$('#industry-modal').modal('show');

			});

			$('#write-industry').on('click', function(event) {
				if ($('#addindustry1').val().length == 0) {
					alert("1차산업군 분류를 입력하세요")
					return;
				} else if ($('#addindustry2').val().length == 0) {
					alert("2차산업군 분류를 입력하세요")
					return;
				} else if ($('#industry1from2').val() != 0){
					alert("이미 등록되어 있습니다.")
					return;
				}
				
				// 2차산업군이 존재하면 verifyArea visibility visible ; return false
				//var values = $('#addindustryform').serializeArray();
				var industry1 = $('#addindustry1').val();
				var industry2 = $('#addindustry2').val();
				var i1no = $('#industry1').val();

				//alert(addindustry1 + " 그리고 " + addindustry2);
				
				$.ajax({
					"url" : "/goottjobplanet/manage/industryadd",
					"method" : "post",
					//"dataType": "json",
					"data": { "i1no": i1no, "industry1": industry1, "industry2": industry2 },
					//"data" : values,
					"success" : function(data, status, xhr) {
						//$('#industry-modal').modal('hide');
						if (industry1 == "" || industry1 == null || industry2 == "" || industry2 == null){
							alert('등록 실패');
						} else {
							alert('산업군이 새로 등록되었습니다.');
						}
//						console.log(data);
					},

					"error" : function(xhr, status, err) {
						alert('등록 실패');
//						console.log(err);
					}
				});
				
 				//console.log(values);
				//$('$addindustryform').submit();
			});

			$('#industry1from2').on('change', function(event) {
				var thisval = $(this).val();
				var thist = $('#industry1from2 option:checked').text();
				
				$('#addindustry1').prop("disabled",true);
				if(thisval == '0' || thisval == null || thisval == ""){
					$('#addindustry2').prop("disabled",false).val(null);
					//$('#write-industry').prop("disabled",false);
				} else {
					$('#addindustry2').prop("disabled",true).val(thist);
					
					//$('#write-industry').prop("disabled",true);
				}
				//alert($('#addindustry2').val());
				
				$('#industry1from2').prop("disabled",false);
				$('#addindustry1').prop("disabled",true);
			});
			
			$('#industry1').on('change', function(event) {
				//alert($(this).val());
				var industry1 = $(this).val();
				var industry1t = $('#industry1 option:checked').text();
				var industry2 = null;

				if(industry1 == '0' || industry1 == null || industry1 == '' ){
					$('#industry1from2').prop("disabled",true);
					$('#addindustry1').prop("disabled",false).val(null);
					$('#addindustry2').prop("disabled",false).val(null);
					$('#industry1from2').empty();
					$('<option></option>').attr("value", 0).text("새로 입력").appendTo('#industry1from2');
					$('#select2-chosen-2').text('새로 입력');
					
				} else {
					$('#industry1from2').prop("disabled",false);
					$('#addindustry1').prop("disabled",true).val(industry1t);
					$('#addindustry2').prop("disabled",false).val(null);
					
					$.ajax({
						"url": "getindustry2",
						"method": "get",
						//"async": true,
						//"dataType": "json",
						"data": { "industry1": industry1 },
						"success": function(result, status, xhr) {
							//console.log(result);
							industry2 = result[0].industries2;
							//alert(result.industries2.industry2);	
							//console.log(industry2);
							//console.log(Object.keys(industry2).length);
							//result[0].industries2[i]의 0번과 2번요소만
							$('#industry1from2').empty();
							$('<option></option>').attr("value", 0).text("새로 입력").appendTo('#industry1from2');
							for (var i = 0; i < Object.keys(industry2).length; i++){
								//console.log(industry2[i].i2no);
								//console.log(industry2[i].industry2);
								$('<option></option>').attr("value", industry2[i].i2no).text(industry2[i].industry2).appendTo('#industry1from2');
								
							}
							//const object = {a: 1, b: 2, c: 5};
							//for (const property in object) {
							//  console.log(`${property}: ${object[property]}`);
							//}
						},
						"error": function(xhr, status, err) {
							//alert("실패");
							console.log(err);
						}
					
					})
				}

			});
						
			$('#cancel-industry').on('click', function(event) {
				$('#industry-modal').modal('hide');
			});
			
			
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