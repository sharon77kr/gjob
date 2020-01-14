package com.gjob.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping(path = { "/company" })
public class CompanyController {
	
	@GetMapping(path = { "/list" })
	public String list() { // 목록보기
		
		return "company/list"; // /WEB-INF/views/ + board/list + .jsp
	}
	
	
}




























