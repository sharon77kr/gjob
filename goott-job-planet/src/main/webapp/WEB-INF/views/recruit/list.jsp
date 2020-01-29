<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Job Board</title>
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
                        <h3>${ pager.dataCount }건의 채용 공고</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ bradcam_area  -->

    <!-- job_listing_area_start  -->
    <div class="job_listing_area plus_padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="job_filter white-bg">
                        <div class="form_inner white-bg">
                            <h3>Filter</h3>
                            <form action="#">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="single_field">
                                            <input type="text" placeholder="Search keyword" id="searchRecruit">
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="single_field">
                                            <select class="wide">
                                                <option data-display="Location">Location</option>
                                                <option value="1">Rangpur</option>
                                                <option value="2">Dhaka </option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="single_field">
                                            <select class="wide">
                                                <option data-display="Category">Category</option>
                                                <option value="1">Category 1</option>
                                                <option value="2">Category 2 </option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="single_field">
                                            <select class="wide">
                                                <option data-display="Experience">Experience</option>
                                                <option value="1">Experience 1</option>
                                                <option value="2">Experience 2 </option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="single_field">
                                            <select class="wide">
                                                <option data-display="Job type">Job type</option>
                                                <option value="1">full time 1</option>
                                                <option value="2">part time 2 </option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="single_field">
                                            <select class="wide">
                                                <option data-display="Qualification">Qualification</option>
                                                <option value="1">Qualification 1</option>
                                                <option value="2">Qualification 2</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="single_field">
                                            <select class="wide">
                                                <option data-display="Gender">Gender</option>
                                                <option value="1">male</option>
                                                <option value="2">female</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="range_wrap">
                            <label for="amount">Price range:</label>
                            <div id="slider-range"></div>
                            <p>
                                <input type="text" id="amount" readonly style="border:0; color:#7A838B; font-size: 14px; font-weight:400;">
                            </p>
                        </div>
                        <div class="reset_btn">
                            <button  class="boxed-btn3 w-100" type="submit">Reset</button>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="recent_joblist_wrap">
                        <div class="recent_joblist white-bg ">
                            <div class="row align-items-center">
                                <div class="col-md-6">
                                    <h4>Job Listing</h4>
                                </div>
                                <div class="col-md-6">
                                    <div class="serch_cat d-flex justify-content-end">
                                        <select>
                                            <option data-display="Most Recent">Most Recent</option>
                                            <option value="1">Marketer</option>
                                            <option value="2">Wordpress </option>
                                            <option value="4">Designer</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="job_lists m-0">
                        <div class="row">
                        	
                        	<c:forEach items="${ recruits }" var="reCom">
                        	<div class="col-lg-12 col-md-12">
                                <div class="single_jobs white-bg d-flex justify-content-between">
                                    <div class="jobs_left d-flex align-items-center">
                                    
                                        <div class="thumb">
                                            <!-- <img src="/goottjobplanet/resources/img/svg_icon/1.svg" alt=""> -->
                                            <img src="/goottjobplanet/resources/upload-files/${ reCom.company.cimage }" alt="">
                                        </div>
                                        <div class="jobs_conetent">
                                            <h4><a href="#" onclick="window.open('detail?recNo=${ reCom.company.recruits[0].recNo }','채용 공고 등록','width=980,height=980,resizable=no');">[${ reCom.cname }] ${ reCom.company.recruits[0].recRTitle }</a></h4>
                                            <div class="links_locat d-flex align-items-center">
                                                <div class="location">
                                                    <p> <i class="fa fa-map-marker"></i>${ reCom.company.location }</p>
                                                </div>
                                                <div class="location">
                                                    <p> <i class="fa fa-clock-o"></i> ${ reCom.company.recruits[0].recType }</p>
                                                </div>
                                            </div>
                                            <div class="links_locat d-flex align-items-center">
                                                <div class="location">
                                                    <p>성별 : ${ reCom.company.recruits[0].gender }</p>
                                                </div>
												<div class="location">
                                                    <p>나이 : ${ reCom.company.recruits[0].age }</p>
                                                </div>
												<div class="location">
                                                    <p>학력 : ${ reCom.company.recruits[0].education }</p>
                                                </div>
                                                <div class="location">
                                                    <p>&nbsp;&nbsp;&nbsp;${ reCom.company.recruits[0].recCareer }</p>
                                                </div>
                                                
                                            </div>
                                            
                                        </div>
                                    </div>
                                    <div class="jobs_right">
                                        <div class="apply_now">
                                            <!-- <a class="heart_mark" href="#"> <i class="fa fa-heart"></i> </a> -->
                                            <c:choose>
                                            	<c:when test="${ loginuser.mclass eq false }"> 
                                            		<a href="#" class="boxed-btn3">즉시 지원</a>
                                            	</c:when>
                                            	<c:otherwise>
                                            	</c:otherwise>
                                            </c:choose>
                                        </div>
                                        <div class="date">
                                            <p>게시일 : <fmt:formatDate value="${ reCom.company.recruits[0].recDate }" pattern="yyyy.MM.dd"/></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
                            
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="pagination_wrap">
                                    <ul>
                                    	<li>${ pager }</li>
                                        <!-- <li><a href="#"> <i class="ti-angle-left"></i> </a></li>
                                        <li><a href="#"><span>01</span></a></li>
                                        <li><a href="#"><span>02</span></a></li>
                                        <li><a href="#"> <i class="ti-angle-right"></i> </a></li> -->
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- job_listing_area_end  -->

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


	<script>
        $( function() {
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

			$('#searchRecruit').on('keyup', function(){
				var keyword = $(this).val();
				$.ajax({
					"url" : "/goottjobplanet/recruit/searchRec",
					"method" : "post",
					//"dataType": "json",
					"data": { "keyword": keyword },
					//"data" : values,
					"success" : function(data, status, xhr) {
						console.log(data);
						console.log($(this).val());
					},

					"error" : function(xhr, status, err) {
						console.log('등록 실패');
//						console.log(err);
					}
				});
				//console.log($(this).val());
			})
            
        } );
        </script>
</body>
<!-- -->
</html>