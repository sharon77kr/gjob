package com.gjob.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(path = { "/account" })
public class AccountController {
	
	@GetMapping("/login")
	public String list() { // 목록보기
		
		return "/account/login"; 
		
	}
	
	@GetMapping("/register")
	public String list2() { // 목록보기
		
		return "/account/register"; // /WEB-INF/views/ + board/list + .jsp
		
	}
	
	
}





























