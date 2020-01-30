<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Goott Job Planet</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="resources/img/favicon.png">
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="resources/css/magnific-popup.css">
    <link rel="stylesheet" href="resources/css/font-awesome.min.css">
    <link rel="stylesheet" href="resources/css/themify-icons.css">
    <link rel="stylesheet" href="resources/css/nice-select.css">
    <link rel="stylesheet" href="resources/css/flaticon.css">
    <link rel="stylesheet" href="resources/css/gijgo.css">
    <link rel="stylesheet" href="resources/css/animate.min.css">
    <link rel="stylesheet" href="resources/css/slicknav.css">

    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="resources/css/custom-apply.css">
    <!-- <link rel="stylesheet" href="resources/css/responsive.css"> -->
</head>

<body id="mainhome">
    <!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

 	<jsp:include page="/WEB-INF/views/modules/topbar.jsp" />

    <!-- slider_area_start -->
    <div class="slider_area">
        <div class="single_slider  d-flex align-items-center slider_bg_1">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-7 col-md-6">
                        <div class="slider_text">
                            <h5 class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s">Find your Family</h5>
                            <h3 class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".3s">Find your Dream Job</h3>
                            <p class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".4s">We provide online instant cash loans with quick approval that suit your term length</p>
                            <div class="sldier_btn wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".5s">
                                <c:choose>
                                	<c:when test="${ empty loginuser }">
                                		<a href="/goottjobplanet/account/login" class="boxed-btn3">로그인 하기</a>
                                	</c:when>
                                	<c:when test="${ not empty loginuser && loginuser.mclass ne true && loginuser.admin_type ne true}">
                                		<a href="/goottjobplanet/resumepool/write" class="boxed-btn3">내 이력서</a>
                                	</c:when>
                                	<c:when test="${ not empty loginuser && loginuser.mclass eq true && loginuser.admin_type ne true}">
                                		<a href="/goottjobplanet/recruit/write" class="boxed-btn3">채용 공고 올리기</a>
                                	</c:when>
                                	<c:otherwise>
                                		<a href="/goottjobplanet/manage/list" class="boxed-btn3">관리하기</a>
                                	</c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="ilstration_img wow fadeInRight d-none d-lg-block text-right" data-wow-duration="1s" data-wow-delay=".2s">
            <img src="resources/img/banner/illustration.png" alt="">
        </div>
    </div>
    <!-- slider_area_end -->

    <!-- catagory_area -->
<!--     <div class="catagory_area">
        <div class="container">
            <div class="row cat_search">
                <div class="col-lg-3 col-md-4">
                    <div class="single_input">
                        <input type="text" placeholder="Search keyword">
                    </div>
                </div>
                <div class="col-lg-3 col-md-4">
                    <div class="single_input">
                        <select class="wide" >
                            <option data-display="Location">Location</option>
                            <option value="1">Dhaka</option>
                            <option value="2">Rangpur</option>
                            <option value="4">Sylet</option>
                          </select>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4">
                    <div class="single_input">
                        <select class="wide">
                            <option data-display="Category">Category</option>
                            <option value="1">Category 1</option>
                            <option value="2">Category 2</option>
                            <option value="4">Category 3</option>
                          </select>
                    </div>
                </div>
                <div class="col-lg-3 col-md-12">
                    <div class="job_btn">
                        <a href="#" class="boxed-btn3">Find Job</a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="popular_search d-flex align-items-center">
                        <span>Popular Search:</span>
                        <ul>
                            <li><a href="#">Design & Creative</a></li>
                            <li><a href="#">Marketing</a></li>
                            <li><a href="#">Administration</a></li>
                            <li><a href="#">Teaching & Education</a></li>
                            <li><a href="#">Engineering</a></li>
                            <li><a href="#">Software & Web</a></li>
                            <li><a href="#">Telemarketing</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
 -->    <!--/ catagory_area -->

    <!-- popular_catagory_area_start  -->
   <!--  <div class="popular_catagory_area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section_title mb-40">
                        <h3>Popolar Categories</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-xl-3 col-md-6">
                    <div class="single_catagory">
                        <a href="jobs.html"><h4>Design & Creative</h4></a>
                        <p> <span>50</span> Available position</p>
                    </div>
                </div>
                <div class="col-lg-4 col-xl-3 col-md-6">
                    <div class="single_catagory">
                        <a href="jobs.html"><h4>Marketing</h4></a>
                        <p> <span>50</span> Available position</p>
                    </div>
                </div>
                <div class="col-lg-4 col-xl-3 col-md-6">
                    <div class="single_catagory">
                        <a href="jobs.html"><h4>Telemarketing</h4></a>
                        <p> <span>50</span> Available position</p>
                    </div>
                </div>
                <div class="col-lg-4 col-xl-3 col-md-6">
                    <div class="single_catagory">
                        <a href="jobs.html"><h4>Software & Web</h4></a>
                        <p> <span>50</span> Available position</p>
                    </div>
                </div>
                <div class="col-lg-4 col-xl-3 col-md-6">
                    <div class="single_catagory">
                        <a href="jobs.html"><h4>Administration</h4></a>
                        <p> <span>50</span> Available position</p>
                    </div>
                </div>
                <div class="col-lg-4 col-xl-3 col-md-6">
                    <div class="single_catagory">
                        <a href="jobs.html"><h4>Teaching & Education</h4></a>
                        <p> <span>50</span> Available position</p>
                    </div>
                </div>
                <div class="col-lg-4 col-xl-3 col-md-6">
                    <div class="single_catagory">
                        <a href="jobs.html"><h4>Engineering</h4></a>
                        <p> <span>50</span> Available position</p>
                    </div>
                </div>
                <div class="col-lg-4 col-xl-3 col-md-6">
                    <div class="single_catagory">
                        <a href="jobs.html"><h4>Garments / Textile</h4></a>
                        <p> <span>50</span> Available position</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    --> <!-- popular_catagory_area_end  -->

    <!-- job_listing_area_start  -->
        <div class="job_listing_area">
        <div class="container">
        </div></div>
    <div class="job_listing_area">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <div class="section_title">
                        <!-- <h3>Job Listing</h3> -->
                        <h3>모집중인 채용 정보</h3>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="brouse_job text-right">
                        <a href="/goottjobplanet/recruit/list" class="boxed-btn4">Browse More Job</a>
                    </div>
                </div>
            </div>
            <div class="job_lists">
                <div class="row">
                
                          	<c:forEach items="${ rec }" var="reCom" varStatus="status" begin="1" end="3">
                        	<div class="col-lg-12 col-md-12">
                                <div class="single_jobs white-bg d-flex justify-content-between">
                                    <div class="jobs_left d-flex align-items-center">
                                    
                                        <div class="thumb">
                                            <!-- <img src="/goottjobplanet/resources/img/svg_icon/1.svg" alt=""> -->
                                            <img src="/goottjobplanet/resources/upload-files/${ reCom.company.cimage }" alt="">
                                        </div>
                                        <div class="jobs_conetent">
                                            <h4><a href="#" onclick="window.open('/goottjobplanet/recruit/detail?recNo=${ reCom.company.recruits[0].recNo }','채용 공고 등록','width=980,height=980,resizable=no');">[${ reCom.cname }] ${ reCom.company.recruits[0].recRTitle }</a></h4>
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
            </div>
        </div>
    </div>
    <!-- job_listing_area_end  -->

    <!-- featured_candidates_area_start  -->
    <div class="featured_candidates_area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section_title text-center mb-40">
                        <!-- <h3>Featured Candidates</h3> -->
                        <h3>대기중인 지원자</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="candidate_active owl-carousel">
                    
				<c:forEach items="${ resumePool }" var="rList">
                <!-- <div class="col-md-6 col-lg-3"> -->
                    <div class="single_candidates text-center">
						<c:choose>
						<c:when test="${ loginuser.mclass eq true }">
                    	<a href="/goottjobplanet/resumepool/detail?mno=${ rList.mno }&pageNo=${ pager.pageNo }&searchType=${ empty param.searchType ? '' : param.searchType }&searchKey=${ empty param.searchKey ? '' : param.searchKey }">
                        </c:when>
                        <c:otherwise><a href="#" id="notcom"></c:otherwise>
                        </c:choose>
                        
                        <div class="thumb">
                            <img src="/goottjobplanet/resources/upload-files/${ rList.gmember.resumePool.profile }" alt="">
                        </div>
                        <h4>${ rList.mname }</h4>
                        
                        <p><c:choose>
                        	<c:when test="${fn:length(rList.gmember.resumePool.intro) > 9}">
                        		${ fn:substring(rList.gmember.resumePool.intro,0,9) }...
                        	</c:when>
                        	<c:otherwise>${ rList.gmember.resumePool.intro }</c:otherwise>
                        </c:choose></p>
						</a>                        
                    </div>
                <!-- </div> -->
                </c:forEach>
                        
                     </div>
                </div>
            </div>
        </div>
    </div>
    <!-- featured_candidates_area_end  -->

    <div class="top_companies_area">
        <div class="container">
            <div class="row align-items-center mb-40">
                <div class="col-lg-6 col-md-6">
                    <div class="section_title">
                        <!-- <h3>Top Companies</h3> -->
                        <h3>기업 정보</h3>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="brouse_job text-right">
                        <a href="/goottjobplanet/company/list" class="boxed-btn4">Browse More Company</a>
                    </div>
                </div>
            </div>
            <div class="row">
            
            
            <c:forEach items="${ com }" var="comp"  varStatus="status" begin="1" end="4">
                <div class="col-lg-4 col-xl-3 col-md-6">
                    <div class="single_company">
                        <div class="thumb">
                            <img src="/goottjobplanet/resources/upload-files/${ comp.company.cimage }" alt="">
                        </div>
                        <a href="#"><h3>${ comp.cname }</h3></a>
                        <p> <span> ${ comp.company.employees } </span> ${ comp.company.ctype }  </p>
                    </div>
                </div>
               </c:forEach> 
                
                
                
                
                
                
                
<!--                 <div class="col-lg-4 col-xl-3 col-md-6">
                    <div class="single_company">
                        <div class="thumb">
                            <img src="resources/img/svg_icon/4.svg" alt="">
                        </div>
                        <a href="jobs.html"><h3>Snack Studio</h3></a>
                        <p> <span>50</span> Available position</p>
                    </div>
                </div>
                <div class="col-lg-4 col-xl-3 col-md-6">
                    <div class="single_company">
                        <div class="thumb">
                            <img src="resources/img/svg_icon/3.svg" alt="">
                        </div>
                        <a href="jobs.html"><h3>Snack Studio</h3></a>
                        <p> <span>50</span> Available position</p>
                    </div>
                </div>
                <div class="col-lg-4 col-xl-3 col-md-6">
                    <div class="single_company">
                        <div class="thumb">
                            <img src="resources/img/svg_icon/1.svg" alt="">
                        </div>
                        <a href="jobs.html"><h3>Snack Studio</h3></a>
                        <p> <span>50</span> Available position</p>
                    </div>
                </div>
            --> </div>
        </div>
    </div>

    <!-- job_searcing_wrap  -->
    <div class="job_searcing_wrap overlay">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 offset-lg-1 col-md-6">
                    <div class="searching_text">
                        <h3>Looking for a Job?</h3>
                        <p>We provide online instant cash loans with quick approval </p>
                        <a href="/goottjobplanet/recruit/list" class="boxed-btn3">Browse Job</a>
                    </div>
                </div>
                <div class="col-lg-5 offset-lg-1 col-md-6">
                    <div class="searching_text">
                        <h3>Looking for a Expert?</h3>
                        <p>We provide online instant cash loans with quick approval </p>
                        <c:choose>
                        <c:when test="${ not empty loginuser && loginuser.mclass eq true }">
                        <a href="/goottjobplanet/recruit/write" id="postjob" class="boxed-btn3">Post a Job</a>
                        </c:when>
                        <c:otherwise>
                        <a href="#" id="postjob" class="boxed-btn3">Post a Job</a>
                        </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- job_searcing_wrap end  -->

    <!-- testimonial_area  -->
    <div class="testimonial_area  ">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section_title text-center mb-40">
                        <h3>Testimonial</h3>
                    </div>
                </div>
                <div class="col-xl-12">
                    <div class="testmonial_active owl-carousel">
                        <div class="single_carousel">
                            <div class="row">
                                <div class="col-lg-11">
                                    <div class="single_testmonial d-flex align-items-center">
                                        <div class="thumb">
                                            <img src="resources/img/testmonial/author.png" alt="">
                                            <div class="quote_icon">
                                                <i class="Flaticon flaticon-quote"></i>
                                            </div>
                                        </div>
                                        <div class="info">
                                            <p>"Working in conjunction with humanitarian aid agencies, we have supported programmes to help alleviate human suffering through animal welfare when people might depend on livestock as their only source of income or food.</p>
                                            <span>- Micky Mouse</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single_carousel">
                            <div class="row">
                                <div class="col-lg-11">
                                    <div class="single_testmonial d-flex align-items-center">
                                        <div class="thumb">
                                            <img src="resources/img/testmonial/author.png" alt="">
                                            <div class="quote_icon">
                                                <i class=" Flaticon flaticon-quote"></i>
                                            </div>
                                        </div>
                                        <div class="info">
                                            <p>"Working in conjunction with humanitarian aid agencies, we have supported programmes to help alleviate human suffering through animal welfare when people might depend on livestock as their only source of income or food.</p>
                                            <span>- Micky Mouse</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single_carousel">
                            <div class="row">
                                <div class="col-lg-11">
                                    <div class="single_testmonial d-flex align-items-center">
                                        <div class="thumb">
                                            <img src="resources/img/testmonial/author.png" alt="">
                                            <div class="quote_icon">
                                                <i class="Flaticon flaticon-quote"></i>
                                            </div>
                                        </div>
                                        <div class="info">
                                            <p>"Working in conjunction with humanitarian aid agencies, we have supported programmes to help alleviate human suffering through animal welfare when people might depend on livestock as their only source of income or food.</p>
                                            <span>- Micky Mouse</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /testimonial_area  -->


    <!-- footer start -->
  	<jsp:include page="/WEB-INF/views/modules/footer.jsp" />
    <!--/ footer end  -->

    <!-- link that opens popup -->
    <!-- JS here -->
    <script src="resources/js/vendor/modernizr-3.5.0.min.js"></script>
    <script src="resources/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="resources/js/popper.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/owl.carousel.min.js"></script>
    <script src="resources/js/isotope.pkgd.min.js"></script>
    <script src="resources/js/ajax-form.js"></script>
    <script src="resources/js/waypoints.min.js"></script>
    <script src="resources/js/jquery.counterup.min.js"></script>
    <script src="resources/js/imagesloaded.pkgd.min.js"></script>
    <script src="resources/js/scrollIt.js"></script>
    <script src="resources/js/jquery.scrollUp.min.js"></script>
    <script src="resources/js/wow.min.js"></script>
    <script src="resources/js/nice-select.min.js"></script>
    <script src="resources/js/jquery.slicknav.min.js"></script>
    <script src="resources/js/jquery.magnific-popup.min.js"></script>
    <script src="resources/js/plugins.js"></script>
    <script src="resources/js/gijgo.min.js"></script>



    <!--contact js-->
    <script src="resources/js/contact.js"></script>
    <script src="resources/js/jquery.ajaxchimp.min.js"></script>
    <script src="resources/js/jquery.form.js"></script>
    <script src="resources/js/jquery.validate.min.js"></script>
    <script src="resources/js/mail-script.js"></script>


    <script src="resources/js/main.js"></script>
	<script>
	$(function(){
		$('.single_candidates').on('click', function(){
			alert('기업 회원만 열람이 가능합니다.');
		})
		$('#postjob').on('click', function(){
			alert('기업 회원이 아닙니다.');
		})


	})
	</script>
</body>

</html>