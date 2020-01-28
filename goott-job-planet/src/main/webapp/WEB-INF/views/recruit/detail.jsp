<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>채용 공고</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="/goottjobplanet/resources/css/custom-apply.css">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

<!-- <script type="text/javascript" src="//code.jquery.com/jquery-3.1.1.min.js"></script> -->
<script type="text/javascript" src="/goottjobplanet/resources/navereditor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type='text/javascript'>
$(function(){
    //전송버튼 클릭이벤트
    $("#apply").on('click', function(){
        

        //폼 submit
        //$("#frm").submit();
    })

    $("#backlist").on('click', function(){
        window.close();
    })
})
</script>
</head>
<body id="wrap_body">
<div class="wrap_jview">
	<div class="wrap_jv_cont">
	
			<form action="write" method="post" id="frm">
 
				<div class="wrap_jv_header">
					<div class="jv_header">
						<a href="#" target="_blank" id="cotitle">[${ recruits.cname }] ${ recruits.company.cwebsite }</a>

						<a href="#" class="btn_jview btn_careers" target="_blank"><span>채용중<span class="num"><!-- 11 --></span></span></a>
						<h4 class="tit_job">${ recruits.company.recruits[0].recRTitle }</h4>


					</div>
				</div>

				<table style="width: 800px; margin: 0 auto">
 
					<tr>
						<th>
							<!-- <h3>Spring MVC Rich Editor Demo</h3> -->
							 
							<div class="btn_apply">
								<span class="dday">D-6</span>
								<button class="sri_btn_lg for_btn_event">
									<span class="sri_btn_immediately">즉시지원</span>
								</button>
							</div>
							 
						</th>
					</tr>

 					
					<tr>
<!-- 						<td><input type="text" style="width: 767px" name="title" placeholder="제목"></td> -->
					</tr>


					<tr>
						<td><input type="hidden" style="width: 767px" name="writer">
						
							<div class="contwrite">
						        <div class="col">
	            					<dl>
	    								<dt>나이</dt>
	    								<dd><strong>${ recruits.company.recruits[0].age }</strong></dd>
									</dl>
	            					<dl>
	    								<dt>성별</dt>
	    								<dd><strong>${ recruits.company.recruits[0].gender }</strong></dd>
									</dl>						        
	            					<dl>
	    								<dt>경력</dt>
	    								<dd><strong>${ recruits.company.recruits[0].position }</strong></dd>
									</dl>
									<dl>
	    								<dt>학력</dt>
	    								<dd><strong>${ recruits.company.recruits[0].education }</strong></dd>
									</dl>
									<dl>
	        							<dt>근무형태</dt>
	        							<dd><strong>${ recruits.company.recruits[0].recType }</strong></dd>
								    </dl>
								</div>
								<div class="col">
					                <dl>
								        <dt>급여</dt>
		        						<dd>${ recruits.company.recruits[0].salary }</dd>
		    						</dl>
		                			<dl>
		        						<dt>직급/직책</dt>
		        						<dd>${ recruits.company.recruits[0].recCareer }</dd>
		    						</dl>
		                            <dl>
		        						<dt>근무지역</dt>
		        						<dd>${ recruits.company.recruits[0].region }</dd>
		    						</dl>
		                            <dl>
		        						<dt>모집인원</dt>
		        						<dd>${ recruits.company.recruits[0].recNumber }</dd>
		    						</dl>
		                            <dl>
		        						<dt>모집기한</dt>
		        						<dd>${ recruits.company.recruits[0].period }</dd>
		    						</dl>		    						
		        				</div>
			           		 </div>
						
						</td>
					</tr>

					<tr>
						<td><div id="rcontents" style="width: 766px; height: 412px;">${ recruits.company.recruits[0].recContents }</div></td>
					</tr>
					<tr>
						<td style="text-align:right;"><button type="button" id="apply" class="btn btn-outline-success">지원 하기</button>&nbsp;<button type="button" id="backlist" class="btn btn-outline-warning">닫기</button></td>
					</tr>
				</table>
			</form>
		</div>
</div>


</body>
</html>