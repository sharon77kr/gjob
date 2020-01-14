package com.gjob.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping(path = { "/notice" })
public class NoticeController {
	
	@GetMapping(path = { "/list.action" })
	public String list() { // 목록보기
		
		return "notice/list"; // /WEB-INF/views/ + board/list + .jsp
	}
	
}





























