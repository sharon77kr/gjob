package com.gjob.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gjob.vo.MemberVO;

@Controller
public class HomeController {
	
	// @Requestspring : mvc는 요청과 메서드를 매핑
		@RequestMapping(path = { "/" }, method = RequestMethod.GET)
		public String home() {
			
			return "home"; //viewName -> /WEB-INF/views/ + home + .jsp
		}
		
		@RequestMapping(path = { "/account" }, method = RequestMethod.GET)
		public String account(HttpSession session) {
			
			MemberVO member = (MemberVO)session.getAttribute("loginuser");
			if(member == null) {
				return "redirect:/account/login";
			} else {
				return "redirect:/";
			}
		}
		
		@RequestMapping(path = { "/manage" }, method = RequestMethod.GET)
		public String manage(HttpSession session) {
			
			MemberVO member = (MemberVO)session.getAttribute("loginuser");
			if(member == null || !member.getAdmin_type()) {
				return "redirect:/";
			} else {
				return "redirect:/manage/list";
			}
		}
//
}
