<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

 <!doctype html>
<html class="no-js" lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>기업정보 등록</title>
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
                        <h3>기업정보 등록</h3>
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
                                        <input type="text" name="ceo" id="ceo" placeholder="대표">
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
                                	<div class="input_field">
                                    <select class="input_field" name="ind1" id="ind1">
                                    <option>1차산업군</option>
                                    <c:forEach items="${ industries1 }" var="ind1">
                                        <option value="${ ind1.i1no }">${ ind1.industry1 }</option>
                                    </c:forEach>
                                    </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                	<div class="input_field">
                                    <select class="input_field" name="ind2" id="ind2">
                                    <option>2차산업군</option>
                                    <c:forEach items="${ industries2 }" var="ind2">
                                        <option value="${ ind2.i2no }">${ ind2.industry2 }</option>
                                    </c:forEach>
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
    <footer class="footer">
        <div class="footer_top">
            <div class="container">
                <div class="row">
                    <div class="col-xl-3 col-md-6 col-lg-3">
                        <div class="footer_widget wow fadeInUp" data-wow-duration="1s" data-wow-delay=".3s">
                            <div class="footer_logo">
                                <a href="#">
                                    <img src="/goottjobplanet/resources/img/logo.png" alt="">
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
