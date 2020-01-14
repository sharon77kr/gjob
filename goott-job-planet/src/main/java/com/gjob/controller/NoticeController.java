package com.gjob.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

@Controller
public class NoticeController {
	
	@RequestMapping(path = { "/notice" }, method = RequestMethod.GET)
	public String list() { // 목록보기
		
		return "notice/notice"; // /WEB-INF/views/ + board/list + .jsp
	}
	
	
}





























