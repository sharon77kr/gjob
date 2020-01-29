package com.gjob.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gjob.service.RecruitService;
import com.gjob.service.ResumeService;
import com.gjob.vo.C_MemberVO;
import com.gjob.vo.MemberVO;

@Controller
public class HomeController {
	
	
	@Autowired
	@Qualifier("recruitService")
	private RecruitService recruitService;
	
	@Autowired
	@Qualifier("resumeService")
	private ResumeService resumeService;
	
	// @Requestspring : mvc는 요청과 메서드를 매핑
		@RequestMapping(path = { "/" }, method = RequestMethod.GET)
		public String home(Model model) {
			
			List<C_MemberVO> rec = recruitService.findRecruitNew();
			List<MemberVO> res = resumeService.findResumeListM();
			
			model.addAttribute("rec", rec);
			model.addAttribute("resumePool", res);
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
