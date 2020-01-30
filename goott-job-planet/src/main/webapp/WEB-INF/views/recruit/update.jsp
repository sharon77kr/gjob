<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>채용 공고 등록</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<!-- <link rel="stylesheet" href="/goottjobplanet/resources/css/style.css"> -->
<link rel="stylesheet" href="/goottjobplanet/resources/css/custom-apply.css">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

<!-- <script type="text/javascript" src="//code.jquery.com/jquery-3.1.1.min.js"></script> -->
<script type="text/javascript" src="/goottjobplanet/resources/navereditor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type='text/javascript'>
$(function(){
    //전역변수선언
    var editor_object = [];
    
    $('#smarteditor').val('${ recruits.company.recruits[0].recContents }');
     
    nhn.husky.EZCreator.createInIFrame({
        oAppRef: editor_object,
        elPlaceHolder: "smarteditor", // textarea의 id
        sSkinURI: "/goottjobplanet/resources/navereditor/SmartEditor2Skin.html", 
        htParams : {
            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseToolbar : true,             
            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseVerticalResizer : true,     
            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
            bUseModeChanger : true, 
        }
    });

    //전송버튼 클릭이벤트
    $("#uploadRecruit").click(function(){
        //id가 smarteditor인 textarea에 에디터에서 대입
        editor_object.getById["smarteditor"].exec("UPDATE_CONTENTS_FIELD", []);
         
        // 이부분에 에디터 validation 검증

        //폼 submit
        $("#frm").submit();
    })
})
</script>
</head>
<body id="wrap_body">
<div class="wrap_jview">
	<div class="wrap_jv_cont">
	
			<form action="update" method="post" id="frm">
				<input type="hidden" name="recNo" value="${ param.recNo }"> 
<!-- 
				<div class="wrap_jv_header">
					<div class="jv_header">
						<a href="#" target="_blank" id="cotitle">(주)잡써치</a>

						<a href="#" class="btn_jview btn_careers" target="_blank"><span>채용중<span class="num">11</span></span></a>
						<h4 class="tit_job">[중견기업]스태츠칩팩코리아 4조3교대 사원모집(기숙사 가능)</h4>


					</div>
				</div>
 -->
				<table style="width: 800px; margin: 0 auto">
					
					<tr>
						<th>
							<!-- <h3>Spring MVC Rich Editor Demo</h3> -->
							<!-- 
							<div class="btn_apply">
								<span class="dday">D-6</span>
								<button class="sri_btn_lg for_btn_event">
									<span class="sri_btn_immediately">즉시지원</span>
								</button>
							</div>
							 -->
						</th>
					</tr>

 					
					<tr>
						<td><input type="text" style="width: 767px" name="recRTitle" value="${ recruits.company.recruits[0].recRTitle }" placeholder="제목"></td>
					</tr>


					<tr>
						<td><input type="hidden" style="width: 767px" value="작성자">
						
							<div class="contwrite">
						        <div class="col">
	            					<dl>
	    								<dt>나이</dt>
	    								<dd><strong><input type="text" name="age" value="${ recruits.company.recruits[0].age }"></strong></dd>
									</dl>
	            					<dl>
	    								<dt>성별</dt>
	    								<dd><strong><input type="text" name="gender" value="${ recruits.company.recruits[0].gender }"></strong></dd>
									</dl>
	            					<dl>
	    								<dt>경력</dt>
	    								<dd><strong><input type="text" name="recCareer" value="${ recruits.company.recruits[0].recCareer }"></strong></dd>
									</dl>
									<dl>
	    								<dt>학력</dt>
	    								<dd><strong><input type="text" name="education" value="${ recruits.company.recruits[0].education }"></strong></dd>
									</dl>
									<dl>
	        							<dt>근무형태</dt>
	        							<dd><strong><input type="text" name="recType" value="${ recruits.company.recruits[0].recType }"></strong></dd>
								    </dl>
								</div>
								<div class="col">
					                <dl>
								        <dt>급여</dt>
		        						<dd><input type="text" name="salary" value="${ recruits.company.recruits[0].salary }"></dd>
		    						</dl>
		                			<dl>
		        						<dt>직급/직책</dt>
		        						<dd><input type="text" name="position" value="${ recruits.company.recruits[0].position }"></dd>
		    						</dl>
		                            <dl>
		        						<dt>근무지역</dt>
		        						<dd><input type="text" name="region" value="${ recruits.company.recruits[0].region }"></dd>
		    						</dl>
		                            <dl>
		        						<dt>모집인원</dt>
		        						<dd><input type="text" name="recNumber" value="${ recruits.company.recruits[0].recNumber }"></dd>
		    						</dl>
		                            <dl>
		        						<dt>모집기한</dt>
		        						<dd><input type="text" name="period" value="${ recruits.company.recruits[0].period }"></dd>
		    						</dl>		    						
		        				</div>
			           		 </div>
						
						</td>
					</tr>

					<tr>
						<td><textarea name="recContents" id="smarteditor" rows="10"
								cols="100" style="width: 766px; height: 412px;"></textarea></td>
					</tr>
					<tr>
						<td style="text-align:right;"><button type="button" id="uploadRecruit" class="btn btn-outline-success">공고 수정</button>&nbsp;
						<button type="button" id="cancel" class="btn btn-outline-warning" onclick="window.close();">취소</button></td>
					</tr>
				</table>
			</form>
		</div>
</div>

<script>

</script>
</body>
<!-- -->
</html>