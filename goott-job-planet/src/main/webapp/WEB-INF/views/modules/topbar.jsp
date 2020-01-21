<%@ page language="java" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- header-start -->
<header>
	<div class="header-area ">
		<div id="sticky-header" class="main-header-area">
			<div class="container-fluid ">
				<div class="header_bottom_border">
					<div class="row align-items-center">
						<div class="col-xl-3 col-lg-2">
							<div class="logo">
								<a href="/goottjobplanet/"> <img
									src="/goottjobplanet/resources/img/logo.png" alt="">
								</a>
							</div>
						</div>
						<div class="col-xl-6 col-lg-7">
							<div class="main-menu  d-none d-lg-block">
								<nav>
									<ul id="navigation">
										<li><a href="/goottjobplanet/">home</a></li>
										<li><a href="/goottjobplanet/recruit/list">채용</a></li>
										<li><a href="/goottjobplanet/company/list">기업 <!-- <i class="ti-angle-down"></i> --></a>
											<!-- <ul class="submenu">
                                                    <li><a href="candidate.html">Candidates </a></li>
                                                    <li><a href="job_details.html">job details </a></li>
                                                    <li><a href="elements.html">elements</a></li>
                                                </ul> --></li>

										<c:if test="${ loginuser.mclass eq true }">
											<li><a href="/goottjobplanet/resumepool/list">인재풀 <!-- <i class="ti-angle-down"></i> --></a>
												<!-- <ul class="submenu">
                                                    <li><a href="blog.html">blog</a></li>
                                                    <li><a href="single-blog.html">single-blog</a></li>
                                                </ul> --></li>
										</c:if>
										<c:if test="${ !empty loginuser && loginuser.mclass ne true && loginuser.admin_type ne true}">
											<li><a href="/goottjobplanet/resumepool/write">이력서
													쓰기</a></li>
										</c:if>

										<li><a href="/goottjobplanet/notice/list">공지사항</a></li>


									</ul>
								</nav>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 d-none d-lg-block">
							<div class="Appointment">
								<c:choose>
									<c:when test="${ empty loginuser }">
										<div class="phone_num d-none d-xl-block">
											<a href="/goottjobplanet/account/login">Log in</a>
										</div>
										<div class="d-none d-lg-block">
											<a class="boxed-btn3"
												href="/goottjobplanet/account/register_select">회원 가입</a>
										</div>
									</c:when>
									<c:otherwise>
										<div class="phone_num d-none d-xl-block">
											<a href="#">${ loginuser.mname }님<br>환영합니다
											</a>
										</div>

										<c:if test="${ loginuser.admin_type eq true }">
											<div class="d-none d-lg-block">
												<a class="boxed-btn3" href="/goottjobplanet/manage/list">관리</a>
											</div>
										</c:if>
										&nbsp;
										<div class="d-none d-lg-block">
											<a class="boxed-btn3" href="/goottjobplanet/account/logout">로그아웃</a>
										</div>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
						<div class="col-12">
							<div class="mobile_menu d-block d-lg-none"></div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
</header>
<!-- header-end -->