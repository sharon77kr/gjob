package com.gjob.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gjob.service.CompanyService;
import com.gjob.vo.CompanyVO;

import lombok.extern.log4j.Log4j;


@Controller
@RequestMapping(path = { "/company" })
@Log4j
public class CompanyController {
	
	@Autowired
	@Qualifier("companyService")
	private CompanyService companyService;
	
	@GetMapping(path = { "/list" })
	public String list() {
		
		return "company/list"; // /WEB-INF/views/ + board/list + .jsp
	}
	
	@GetMapping(path = { "/write" })
	public String showWriteForm() {
		
		return "company/write"; // /WEB-INF/views/ + board/list + .jsp
	}
	
	@PostMapping(path = { "/write" })
	public String write(CompanyVO company, RedirectAttributes attr) {
		
		int newBoardNo = companyService.writeBoard(company);
		log.warn("NEW BOARD NO: " + newBoardNo);
		
		attr.addFlashAttribute("newBno", newBoardNo);
		return "redirect:list";
	}
	
	
}