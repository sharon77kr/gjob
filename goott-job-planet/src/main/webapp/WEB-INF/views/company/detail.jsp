<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

 <!doctype html>
<html class="no-js" lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>기업정보</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="/goottjobplanet/resources/img/favicon.png">
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

	 <div class="job_details_area">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="apply_job_form white-bg">
                        <h4>${ loginuser.cmember.cname }</h4>
                        <form id="write-form" role="form" action="write" method="post" enctype="multipart/form-data">
                            <div class="row">
                            	<!-- <input type="hidden" name="i2no" id="i2no" value="1"> -->
                            	<input type="hidden" name="mno" id="mno" value="${ loginuser.mno }">
                            	<!-- <input type="hidden" name="cimage" id="cimage" value="1"> -->
                                
                                <div class="thumb">
	                                <img id="myfile1" style="width:150px; height:150px; margin:10px">
                                </div>
                                <div class="col-md-12">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                          <button type="button" id="inputGroupFileAddon03"><i class="fa fa-cloud-upload" aria-hidden="true"></i>
                                          </button>
                                        </div>
                                        <div class="custom-file">
                                          <input type="file" class="custom-file-input" name="cimage2" id="cimage" aria-describedby="inputGroupFileAddon03">
                                          <label class="custom-file-label" for="inputGroupFile03">기업 이미지</label>
                                        </div>
                                      </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="input_field">
                                        <input type="text" name="ceo" id="ceo" placeholder="대표" value="">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="input_field">
                                        <input type="text" name="sales" id="sales" placeholder="매출">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="input_field">
                                        <input type="text" name="location" id="location" placeholder="주소">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="input_field">
                                        <input type="text" name="cwebsite" id="cwebsite" placeholder="웹사이트">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="input_field">
                                        <!-- <input type="text" name="eDate" id="eDate" onfocus="(this.type='date')" placeholder="설립일"> -->
                                        <input type="text" name="eDate" id="eDate" onfocus="(this.type='date')" placeholder="설립일">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="input_field">
                                        <input type="text" name="employees" id="employees" placeholder="사원수">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="input_field">
                                        <input type="text" name="ctype" id="ctype" placeholder="기업형태">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                	<div class="input_field" id="i1noSection">
                                    <select class="input_field" name="ind1" id="ind1">
                                    <option value="0">1차산업군</option>
                                    <c:forEach items="${ industries1 }" var="ind1">
                                        <option value="${ ind1.i1no }">${ ind1.industry1 }</option>
                                    </c:forEach>
                                    </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                	<div class="input_field" id="i2noSection">
                                    <select class="input_field" name="i2no" id="ind2">
                                    <option value="0">2차산업군</option>
                                    </select>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="input_field">
                                        <textarea name="cintro" id="cintro" cols="30" rows="10" placeholder="기업소개"></textarea>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="submit_btn">
                                        <button id="write-button" class="boxed-btn3 w-100" type="button">등록</button>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="submit_btn">
                                        <button class="boxed-btn3 w-100" type="reset">다시쓰기</button>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="submit_btn">
                                        <button id="tolist-button" class="boxed-btn3 w-100" type="button">목록</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
             </div>
        </div>
    </div>
	


    <!-- footer start -->
   <jsp:include page="/WEB-INF/views/modules/footer.jsp" />
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


	<script type="text/javascript">
	
        $(function() {
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


            $('#tolist-button').on('click', function(event) {
    			location.href = "list";
    		});

    		$('#write-button').on('click', function(event) {
    			//1. 유효성 검사
    			/* if ($('#ceo').val() == '') {
    				alert('대표를 입력하세요');
    				$('#ceo').focus();
    				return;
    			}
    			if ($('#sales').val() == '') {
    				alert('매출을 입력하세요');
    				$('#sales').focus();
    				return;
    			}
    			if ($('#location').val() == '') {
    				alert('주소를 입력하세요');
    				$('#location').focus();
    				return;
    			}
    			if ($('#cwebsite').val() == '') {
    				alert('웹사이트를 입력하세요');
    				$('#cwebsite').focus();
    				return;
    			}
    			if ($('#eDate').val() == '') {
    				alert('설립일을 입력하세요');
    				$('#eDate').focus();
    				return;
    			}
    			if ($('#employees').val() == '') {
    				alert('사원수를 입력하세요');
    				$('#employees').focus();
    				return;
    			}
    			if ($('#ctype').val() == '') {
    				alert('기업형태를 입력하세요');
    				$('#ctype').focus();
    				return;
    			}
    			if ($('#cintro').val() == '') {
    				alert('기업소개를 입력하세요');
    				$('#cintro').focus();
    				return;
    			} */

    			//2. 오류가 없다면 서버로 전송
    			$('#write-form').submit();
    			//console.log($("#ind1 option:selected").val());

    			
    		});
        } );

        $(function() {

			$('#i1noSection li:first-child').remove();
			
			$('#ind1').on('change', function(event) {
				var industry1 = $(this).val();
				var industry2 = null;
				if(industry1 == '0' || industry1 == null || industry1 == '' ){
					$('#ind2').prop("disabled",true);
					$('#ind2').empty();
					$('<option></option>').attr("value", 0).text("2차 산업군").appendTo('#ind2');
					
				} else {
					$('#ind2').prop("disabled",false);
					$('div[class="input_field disabled"]').attr('class','input_field');
					$('#i2noSection .current').text("2차 산업군");
					$.ajax({
						"url": "/goottjobplanet/manage/getindustry2",
						"method": "get",
						"data": { "industry1": industry1 },
						"success": function(result, status, xhr) {
							industry2 = result[0].industries2;

							$('#ind2').empty();
							$('#i2noSection li').remove();
							$('<option></option>').attr("value", 0).text("2차 산업군").appendTo('#ind2');
							for (var i = 0; i < Object.keys(industry2).length; i++){
								$('<option></option>').attr("value", industry2[i].i2no).text(industry2[i].industry2).appendTo('#ind2');
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
            
			$('input[name=cimage2]').on('change', function(event) {

				if (this.files && this.files[0]) { //파일 선택기의 파일 선택 확인
					var reader = new FileReader();

					//파일을 다 읽었을 때 호출할 함수 지정
					reader.onload = function(e) {
						$('#myfile1').attr('src', e.target.result);
					}; 
				
					reader.readAsDataURL(this.files[0]); //파일 읽기
				}
			
			});	
		});
        </script>
</body>

</html>
