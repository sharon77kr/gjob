package com.gjob.controller;

import java.io.File;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
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

import com.gjob.service.RecruitService;
import com.gjob.ui.ThePager2;
import com.gjob.vo.C_MemberVO;
import com.gjob.vo.CompanyVO;
import com.gjob.vo.MemberVO;
import com.gjob.vo.RecruitVO;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping(path = {"/recruit"})
@Log4j
public class RecruitController {
	
	@Autowired
	@Qualifier("recruitService")
	private RecruitService recruitService;
	
	@GetMapping(path = {"/list"})
	public String list(@RequestParam(defaultValue = "1") int pageNo, @RequestParam(required = false) String searchType,
			@RequestParam(required = false) String searchKey, HttpServletRequest req, Model model) {
		
		int pageSize = 5;
		int pagerSize = 5;
		HashMap<String, Object> params = new HashMap<>();
		int beginning = (pageNo - 1) * pageSize + 1;
		params.put("beginning", beginning);
		params.put("end", beginning + pageSize);
		params.put("searchType", searchType);
		params.put("searchKey", searchKey);
		
		List<C_MemberVO> boards = recruitService.findRecruitWithPaging(params);
		int boardCount = recruitService.findRecruitCount(params);

		ThePager2 pager = new ThePager2(boardCount, pageNo, pageSize, pagerSize, "list", req.getQueryString());

		model.addAttribute("recruits", boards);
		model.addAttribute("pager", pager);

		
		return "/recruit/list";
		
	}
	
	@GetMapping(path = {"/write"})
	public String write(HttpSession session) {
		
		//승인받지 못한 기업 처리
		MemberVO cmember = (MemberVO)session.getAttribute("loginuser");
		if(cmember.getCmember().getAuthority() == true) {
			return "/recruit/write";
		} else {
			return "redirect:/";
		}
	}
	
	@PostMapping(path = {"/write"})
	public String regRecruit(RecruitVO recruit, HttpSession session) {
		
		MemberVO cmember = (MemberVO)session.getAttribute("loginuser");

		int cno = recruitService.findCnoByMno(cmember.getMno());
		recruit.setCno(cno);

		recruitService.uploadRecruit(recruit);

		
		return "redirect:/"; //팝업 닫는걸로
		
	}
	
	@GetMapping(path = {"/detail"})
	public String detail(int recNo, Model model) {
		
		C_MemberVO recruits = recruitService.findRecruitByRecNo(recNo);
		
		model.addAttribute("recruits", recruits);
		
		return "/recruit/detail";
	}
	
	
	@RequestMapping(path = "/galleryimageupload")
	public String imageUpload(MultipartFile Filedata, String callback, String callback_func, HttpServletRequest req) throws Exception {
		
		String return1 = callback;
		String return2 = "?callback_func=" + callback_func;
		String return3 = "";
		String fileName = "";
		
		if (Filedata != null) {
					
			fileName = Filedata.getOriginalFilename();
            String ext = fileName.substring(fileName.lastIndexOf(".")+1);
            //파일 기본경로
            String defaultPath = req.getServletContext().getRealPath("/");
            //파일 기본경로 _ 상세경로
            String path = defaultPath + "resources" + File.separator + "upload" + File.separator;
             
            File file = new File(path);
             
            //디렉토리 존재하지 않을경우 디렉토리 생성
            if(!file.exists()) {
                file.mkdirs();
            }
            
            //서버에 업로드 할 파일명(한글문제로 인해 원본파일은 올리지 않는것이 좋음)
            String realname = UUID.randomUUID().toString() + "." + ext;
            ///////////////// 서버에 파일쓰기 ///////////////// 
            Filedata.transferTo(new File(path + realname));

            return3 += "&bNewLine=true&sFileName="+fileName+"&sFileURL=/goottjobplanet/resources/upload/"+realname;
        }else {
            return3 += "&errstr=error";
        }
		
		return "redirect:" + return1+return2+return3;
	}

	

}
