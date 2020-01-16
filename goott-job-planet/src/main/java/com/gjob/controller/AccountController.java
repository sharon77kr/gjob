package com.gjob.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gjob.service.AccountService;
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
	public String Gregister(MemberVO member) {
		
		accountService.gregisterMember(member);
		return "redirect:/";
	}
	

	
}

