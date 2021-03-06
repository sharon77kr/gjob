<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
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
 <style>
   	table.jw-custom {
	    border-collapse: collapse;
	    text-align: left;
	    line-height: 2;
	    border-top: 1px solid #ccc;
	    border-bottom: 1px solid #ccc;
	    margin: 10px 5px;
	}
	table.jw-custom thead th {
	    width: 150px;
	    padding: 20px;
	    font-weight: bold;
	    vertical-align: top;
	    color: #fff;
	    background: #e7708d;
	    margin: 10px 5px;
	}
	table.jw-custom tbody th {
	    width: 150px;
	    padding: 20px;
	}
	table.jw-custom td {
	    width: 400px;
	    padding: 20px;
	    vertical-align: top;
	}
	table.jw-custom .even {
	    background: #fdf3f5;
	}
	.btn btn-info {padding:10px;}
    </style>
<body>


	<jsp:include page="/WEB-INF/views/modules/topbar.jsp" />

    <!-- bradcam_area  -->
    <div class="bradcam_area bradcam_bg_1">
        <div class="container">
        	              <div class="row">
                <div class="col-xl-12">
                    <div class="bradcam_text">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ bradcam_area  -->
   
<div id="button-container">
       <table class="jw-custom" id="dataTable" width="100%" cellspacing="0" style=" text-align: center; vertical-align: middle">
                  <thead>
                    <tr>
                      <th scope="cols">회원번호</th>
                      <th scope="cols">회원분류</th>
                      <th scope="cols">아이디</th>
                      <th scope="cols">이름</th>
                      <th scope="cols">이메일</th>
                      <th scope="cols">전화번호</th>
                      <th scope="cols">승인</th>
                    </tr>
                  </thead>                  
                  <tbody>
                  	<c:forEach items="${ members }" var="member">
                  	<tr>
                      <td class="even">${ member.mno }</td>
                      <td>
                      <c:choose>
                      <c:when test="${ member.mclass eq '0'}">일반 회원</c:when>
                      <c:when test="${ member.mclass eq true}">기업 회원</c:when>
                      </c:choose>
                      </td>
                      <td>
                      	<a href="detail.action?bno=${ member.mno }">
                      		${ member.id }</a>
                      </td>
                      <td>
                      	<a class="to-detail" href="javascript:" data-bno="${ member.mno }">
                      		${ member.mname }
                      	</a>
                      </td>
                      <td>${ member.email }</td>
                      <td>${ member.mphone }</td>
                      <td>
					  <c:choose>
					  	<c:when test="${ member.mclass eq true && member.authority eq false }">
					  	
   						 <button type="button" class="btn btn-info unAuth" data-mno="${ member.mno }">승인대기중</button>
   						 
   						</c:when>
						<c:when test="${ member.mclass eq true && member.authority eq true }">
   						 <button type="button" class="btn secondary" data-mno="${ member.mno }">승인완료</button>
   						</c:when>
					  </c:choose>                      
                      </td>
                    </tr>
                    </c:forEach>
                  </tbody>
                  <tfoot>
                  	<!--  <tr>
                  	  <td colspan="7" style="text-align:center">${ pager }</td>                  	  
                  	</tr>
                  </tfoot> -->
                 </table>
                 <div class="row">
				<div class="col-lg-12">
					<div class="pagination_wrap">
						<ul>
							<li>${ pager }</li>
							<!--                             <li><a href="#"> <i class="ti-angle-left"></i> </a></li>
                            <li><a href="#"><span>01</span></a></li>
                            <li><a href="#"><span>02</span></a></li>
                            <li><a href="#"> <i class="ti-angle-right"></i> </a></li> -->
						</ul>
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

            $('#button-container').on('click', '.unAuth', function(event) {			

            	var mno = $(this).attr('data-mno');

            	console.log(mno);
            	
            	location.href = "/goottjobplanet/account/apply?mno=" + mno;
    			
   			}); 		
    			
        } );

        
        </script>
</body>

</html>
