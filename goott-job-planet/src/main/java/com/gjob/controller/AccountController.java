package com.gjob.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(path = { "/account" })
public class AccountController {
	
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

	
}

