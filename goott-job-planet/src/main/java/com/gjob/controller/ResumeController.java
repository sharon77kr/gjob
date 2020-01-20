package com.gjob.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gjob.service.ResumeService;
import com.gjob.vo.Resume_PoolVO;

import lombok.extern.log4j.Log4j;


@Controller
@RequestMapping(path = { "/resumepool" })
@Log4j
public class ResumeController {
	
	@Autowired
	@Qualifier("resumeService")
	private ResumeService resumeService;
	
	@GetMapping(path = { "/list" })
	public String list() {
		
		return "resume/list";
	}
	
	@GetMapping(path = { "/write" })
	public String showWriteForm() {
		
		return "resume/write";
	}
	
	@PostMapping(path = { "/write" })
	public String write(Resume_PoolVO resume, RedirectAttributes attr) {
		
		int newBoardNo = resumeService.writeResume(resume);
		log.warn("NEW BOARD NO: " + newBoardNo);
		
		attr.addFlashAttribute("newBno", newBoardNo);
		return "redirect:list";
	}
	
	
}
