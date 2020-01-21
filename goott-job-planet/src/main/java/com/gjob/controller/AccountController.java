package com.gjob.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gjob.service.AccountService;
import com.gjob.service.MemberService;
import com.gjob.vo.C_MemberVO;
import com.gjob.vo.G_MemberVO;
import com.gjob.vo.MemberVO;

@Controller
@RequestMapping(path = { "/account" })
public class AccountController {
	
	@Autowired
	@Qualifier("accountService")
	private AccountService accountService;
	
	@GetMapping("/login")
	public String list() { 
		
		return "/account/login"; 
		
	}
	
	@GetMapping("/register_select")
	public String list2() { 
		
		return "/account/register_select"; 
		
	}
	
	@GetMapping("/g_register")
	public String list3() { 
		
		return "/account/g_register"; 
		
	}

	@GetMapping("/c_register")
	public String list4() { 
		
		return "/account/c_register"; 
		
	}
	
	@PostMapping("/g_register")
	public String Gregister(MemberVO member, G_MemberVO gmember) {
		
		accountService.gregisterMember(member);
		accountService.gregisterMember2(gmember);
		
		return "redirect:/";
	}
	
	@PostMapping("/c_register")
	public String Gregister(MemberVO member, C_MemberVO cmember) {
		
		accountService.gregisterMember(member);
		accountService.cregisterMember(cmember);
		
		return "redirect:/";
	}
	
	@PostMapping(path = { "/login" })
	public String login(MemberVO member, HttpSession session) {
				
		MemberVO member2 = accountService.findMemberByEmailAndPasswd(member);
		
		if (member2 == null) {
			return "/account/login";
		}

		if (!member2.getMclass()) {
			member2 = accountService.findGMemberBirth(member);
		} else {
			member2 = accountService.findCMemberAtt(member);
		}
		
		//로그인 처리 -> Session에 데이터 저장
		session.setAttribute("loginuser", member2);
		return "redirect:/";
		
	}
	
	@GetMapping(path = { "/logout" })
	public String logout(HttpSession session) {
		
		session.removeAttribute("loginuser");
		
		return "redirect:/";
	}
	
	@Autowired
	@Qualifier("memberService")
	private MemberService memberService;
	
	@GetMapping(path = { "/memberlist" })
	public String list5(Model model) { // 목록보기
		
		List<MemberVO> members = memberService.findMember();
		
		model.addAttribute("members", members);
		
		return "account/memberlist"; 
	}
	
}

