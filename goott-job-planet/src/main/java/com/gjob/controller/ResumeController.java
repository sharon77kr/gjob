package com.gjob.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gjob.service.ResumeService;
import com.gjob.vo.Industries1VO;
import com.gjob.vo.Industries2VO;
import com.gjob.vo.LicenseVO;
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
		
		return "resumepool/list";
	}
	
	@GetMapping(path = { "/write" })
	public String showWriteForm(Model model) {
		
		List<LicenseVO> license = resumeService.findLicense();
		
		List<Industries1VO> industries1 = resumeService.findIndustry1();
		List<Industries2VO> industries2 = resumeService.findIndustry2();
		
		model.addAttribute("industries1", industries1);
		model.addAttribute("industries2", industries2);
		
		model.addAttribute("license", license);
		
		return "resumepool/write";
	}
	
	@PostMapping(path = { "/write" })
	public String write(Resume_PoolVO resume, Model model) {
		


		resumeService.writeResume(resume);
		
		return "redirect:/account/mypage";
		
//		int newBoardNo = resumeService.writeResume(resume);
//		log.warn("NEW BOARD NO: " + newBoardNo);
//		
//		attr.addFlashAttribute("newBno", newBoardNo);
//		return "redirect:list";
	}
	
//	@GetMapping(path = { "/detail" })
//	public String showDetailForm() {
//		
//		return "resumepool/detail";
//	}
	
	
}
