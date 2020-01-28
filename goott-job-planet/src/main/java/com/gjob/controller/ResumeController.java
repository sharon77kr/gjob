package com.gjob.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gjob.service.ManageService;
import com.gjob.service.ResumeService;
import com.gjob.ui.ThePager2;
import com.gjob.vo.Industries1VO;
import com.gjob.vo.Industries2VO;
import com.gjob.vo.LicenseVO;
import com.gjob.vo.MemberVO;
import com.gjob.vo.NoticeVO;
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
	public String list(@RequestParam(defaultValue = "1") int pageNo, @RequestParam(required = false) String searchType,
			@RequestParam(required = false) String searchKey, HttpServletRequest req, Model model) {
		
		int pageSize = 4;
		int pagerSize = 5;
		HashMap<String, Object> params = new HashMap<>();
		int beginning = (pageNo - 1) * pageSize + 1;
		params.put("beginning", beginning);
		params.put("end", beginning + pageSize);
		params.put("searchType", searchType);
		params.put("searchKey", searchKey);
		
		List<MemberVO> boards = resumeService.findResumeWithPaging(params);
		int boardCount = resumeService.findResumeCount(params);

		ThePager2 pager = new ThePager2(boardCount, pageNo, pageSize, pagerSize, "list", req.getQueryString());

		model.addAttribute("resumePool", boards);
		model.addAttribute("pager", pager);
		
		return "resumepool/list";
	}

	
	@Autowired
	@Qualifier("manageService")
	private ManageService manageService;
	
	@GetMapping(path = { "/write" })
	public String showWriteForm(Model model, HttpSession session, Resume_PoolVO resume, Industries1VO industry) {
		
		//로그인한 유저의 이력서가 존재하는 경우 //Result_Pool 테이블에 mno가 일치하는 값이 있는지 확인
		MemberVO member = (MemberVO)session.getAttribute("loginuser");
		
		if(member == null) {
			return "redirect:/account/login";
		}
		
		resume = resumeService.findResumeByCurrMem(member.getMno());
		
		List<Industries1VO> industries1 = manageService.findIndustry1();
		model.addAttribute("industries1", industries1);
		

		if (resume == null) {
			return "/resumepool/write";
		} else {
			industry = resumeService.findIndustryByMem(resume.getI2no());
			model.addAttribute("industry", industry);
			model.addAttribute("resume", resume);
			return "/resumepool/update";
		}
		
	}
	
	@PostMapping(path = { "/write" })
	public String write(Resume_PoolVO resume, MultipartHttpServletRequest req/*, RedirectAttributes attr*/) {

		MultipartFile file = req.getFile("profilem"); //업로드된 파일 객체 반환
		ServletContext application = req.getServletContext();
		String path = application.getRealPath("/resources/upload-files");
			
		String fileName = file.getOriginalFilename();
		;
		UUID uuid = UUID.randomUUID();
		fileName = uuid.toString() + fileName.substring(fileName.length()-4, fileName.length());

		//확장자검사
		
		try {
			File f = new File(path, fileName);
			file.transferTo( f ); //파일 저장
			resume.setProfile(fileName);
			
			resumeService.writeResume(resume);
			
			return "redirect:/";
		} catch (Exception ex) {
			//ex.printStackTrace();
			//알러트
			return "redirect:/resumepool/write";
		}
		
	}


	@PostMapping(path = { "/update" })
	public String update(Resume_PoolVO resume, MultipartHttpServletRequest req) {
		if( req.getFile("profilem").getOriginalFilename().isEmpty()) {
			resumeService.updateResumeExceptProfile(resume);
			return "redirect:/";
		} else {
			MultipartFile file = req.getFile("profilem"); //업로드된 파일 객체 반환
			ServletContext application = req.getServletContext();
			String path = application.getRealPath("/resources/upload-files");
				
			String fileName = file.getOriginalFilename();
			
			UUID uuid = UUID.randomUUID();
			fileName = uuid.toString() + fileName.substring(fileName.length()-4, fileName.length());

			//확장자검사
			
			try {
				File f = new File(path, fileName);
				file.transferTo( f ); //파일 저장
				resume.setProfile(fileName);
				
				resumeService.updateResume(resume);
				
				return "redirect:/";
			} catch (Exception ex) {
				//ex.printStackTrace();
				//알러트
				return "redirect:/resumepool/write";
			}
		}
		
	}
	
	@GetMapping(path = { "/detail" })
	public String showDetailForm(int mno, @RequestParam(defaultValue = "1")int pageNo, Model model, HttpServletRequest req, HttpServletResponse resp) {
		//1-1. bno를 사용해서 게시물 조회
		MemberVO resume = resumeService.findResumeByMno(mno);
		
		if (resume == null) {
			return "redirect:list";
		}
		
		Industries1VO industry = resumeService.findIndustryByMem(resume.getGmember().getResumePool().getI2no());

		model.addAttribute("industry", industry);

		//2. 조회된 데이터를 View에서 사용할 수 있도록 저장
		model.addAttribute("resume", resume);
		
		
		return "resumepool/detail";
	}
	
	
}
