<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

						<ul class="list-group">
							<c:forEach items="${ not empty reviews ? reviews : review.reviews }" var="reply">						
							<c:if test="${ review.rno > 0 }">
							<li class='list-group-item' data-rno='${ review.rno }'>
									<div class='header'>
									<c:if test="${ not review.deleted }">
										<strong class='primary-font'>${ review.writer }</strong>
										<small class='float-right'>${ review.review_date }</small>
									</c:if>
									</div>
									<p>
									<c:choose>
									<c:when test="${ not review.deleted }">
									${ review.review }
									</c:when>
									<c:otherwise>
									[삭제된 글입니다.]									
									</c:otherwise>
									</c:choose>
									</p>
									<div class="footer">
										<c:if test="${ not review.deleted }">
										<c:if test="${ loginuser.mno == review.mno }">
										<button data-rno='${ review.rno }' class="btn btn-primary btn-sm reply-update">수정</button>
										<button data-rno='${ review.rno }' class="btn btn-primary btn-sm reply-delete">삭제</button>
										</c:if>
										</c:if>
									</div>
							</li>
							</c:if>
							</c:forEach>
														
						</ul>