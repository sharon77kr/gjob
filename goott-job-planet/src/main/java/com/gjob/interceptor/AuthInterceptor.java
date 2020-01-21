package com.gjob.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.gjob.vo.MemberVO;

public class AuthInterceptor extends HandlerInterceptorAdapter {

		// Controller 실행 (호출) 전
		@Override
		public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
				throws Exception {
					
			String uri = request.getRequestURI();
			//System.out.println("in interceptor : " + uri);
			HttpSession session = request.getSession();

			
			MemberVO member = (MemberVO)session.getAttribute("loginuser");

			if ( uri.contains("/notice/write") || uri.contains("/notice/update") || uri.contains("/notice/delete") ) {
				if(member == null || !member.getAdmin_type()) {
					response.sendRedirect("/goottjobplanet/notice/list");
					return false;
				}
			}
			
			// uri.contains("/resumepool/list")
//			if ( uri.contains("/resumepool/write") ) {
//				//System.out.println(member.getMclass());
//				if(member == null || member.getMclass() == true) {
//					response.sendRedirect("/goottjobplanet/");
//					return false;
//				}
//			}
//			
//			if ( uri.contains("/resumepool") ) {
//				if(member == null || member.getMclass() == false) {
//					response.sendRedirect("/goottjobplanet/");
//					return false;
//				}
//			}
//			
			if ( uri.contains("/manage") ) {
				if(member == null || !member.getAdmin_type()) {
					response.sendRedirect("/goottjobplanet/");
					return false;
				}
			}
			

			
			return true;
			
						
			
			
			
			
//			if (uri.contains("/notice/write") || uri.contains("/notice/update")) { 
//
//				if (session.getAttribute("loginuser") == null) {
//					response.sendRedirect("/goottjobplanet/notice/list");
//					return false; // 컨트롤러로 요청을 전달하지 마세요
//				}
//			}
			
//			if (uri.contains("/board/") || uri.contains("/reply/")) { 
//				if (session.getAttribute("loginuser") == null) {
//					response.sendRedirect("/spring-board-b/resources/login.html");
//					return false; // 컨트롤러로 요청을 전달하지 마세요
//				}
//			}
//			
//			return true; // 컨트롤러로 요청을 전달하세요
		}
		
		// Controller 실행 (호출) 후
		@Override
		public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
				ModelAndView modelAndView) throws Exception {
			
		}
		
		// 요청 처리 후 (View 처리 후)
		@Override
		public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
				throws Exception {
			
		}
}
