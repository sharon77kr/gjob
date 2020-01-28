package com.gjob.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gjob.common.Util;
import com.gjob.service.CompanyService;
import com.gjob.ui.ThePager2;
import com.gjob.vo.CompanyVO;
import com.gjob.vo.Industries1VO;
import com.gjob.vo.Industries2VO;

import lombok.extern.log4j.Log4j;


@Controller
@RequestMapping(path = { "/company" })
@Log4j
public class CompanyController {
	
    @InitBinder
    public void customizeBinding (WebDataBinder binder) {
        SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd");
        dateFormatter.setLenient(false);
        binder.registerCustomEditor(Date.class,
                                    new CustomDateEditor(dateFormatter, true));
    }
	
	@Autowired
	@Qualifier("companyService")
	private CompanyService companyService;
	
//	@GetMapping(path = { "/list2" })
//	public String list2(Model model) { // 목록보기
//		
//		//데이터 조회 (서비스에 요청)
//		List<CompanyVO> companies = companyService.findBoard();
//		//List<Industries1VO> industries1 = companyService.findIndustry1();
//		
//		//Model 타입 전달인자에 데이터 저장 -> View로 전달
//		//(실제로는 Request 객체에 데이터 저장)
//		model.addAttribute("companies", companies);
//		//model.addAttribute("industries1", industries1); 
//		
//		return "company/list"; // /WEB-INF/views/ + board/list + .jsp
//	}
//	
//	@GetMapping(path = { "/list" })
//	public String list(
//			@RequestParam(defaultValue = "1") int pageNo,
//			//RequestParam(required=false) : 요청 데이터가 없으면 null로 설정
//			@RequestParam(required = false) String searchType,
//			@RequestParam(required = false) String searchKey,
//			HttpServletRequest req,
//			Model model) { // 목록보기
//		
//		int pageSize = 3;
//		int pagerSize = 3;
//		HashMap<String, Object> params = new HashMap<>();
//		int beginning = (pageNo - 1) * pageSize + 1;
//		params.put("beginning", beginning);
//		params.put("end", beginning + pageSize);
//		params.put("searchType", searchType);
//		params.put("searchKey", searchKey);
//				
//		//데이터 조회 (서비스에 요청)
//		List<CompanyVO> companies = companyService.findBoardWithPaging(params);
//		int boardCount = companyService.findBoardCount(params);//전체 글 개수
//		
////		ThePager pager = 
////			new ThePager(boardCount, pageNo, pageSize, pagerSize, 
////						 "list.action");
//
//		ThePager2 pager = 
//			new ThePager2(boardCount, pageNo, pageSize, pagerSize, 
//						  "list", req.getQueryString());
//		
//		//Model 타입 전달인자에 데이터 저장 -> View로 전달
//		//(실제로는 Request 객체에 데이터 저장)
//		model.addAttribute("companies", companies);
//		model.addAttribute("pager", pager);
//		
//		return "board/list"; // /WEB-INF/views/ + board/list + .jsp
//	}
	
	@GetMapping(path = { "/list" })
	public String list() {
		
		return "company/list";
	}
	
	@GetMapping(path = { "/write" })
	public String showWriteForm(Model model) {
		
		List<Industries1VO> industries1 = companyService.findIndustry1();
		List<Industries2VO> industries2 = companyService.findIndustry2();
		
		model.addAttribute("industries1", industries1);
		model.addAttribute("industries2", industries2);
		
		return "company/write";
	}
	
	
	@PostMapping(path = { "/write" })
	public String write(
			CompanyVO company,
			MultipartHttpServletRequest req,
			RedirectAttributes attr) {
		
		MultipartFile file = req.getFile("cimage2"); //업로드된 파일 객체 반환
		ServletContext application = req.getServletContext();
		String path = application.getRealPath("/resources/upload-files");
			
		String fileName = file.getOriginalFilename();
		System.out.println(fileName);
		
		fileName = Util.makeUniqueFileName(fileName);
		
		try {
			File f = new File(path, fileName);
			file.transferTo( f ); //파일 저장
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
		System.out.println("");
		
		company.setCimage(fileName);
		
		int newBoardNo = companyService.writeBoard(company);
		log.warn("NEW BOARD NO: " + newBoardNo);
		
		attr.addFlashAttribute("newBno", newBoardNo);
		
		return "redirect:list";
	}
		
//	@GetMapping(path = { "/relation-ind" })
//	public String relationInd(Model model) {
//		
//		List<Industries1VO> industries1 = companyService.findIndustry1();
//		List<Industries2VO> industries2 = companyService.findIndustry2();
//		
//		model.addAttribute("industries1", industries1);
//		model.addAttribute("industries2", industries2);
//		
//		return "company/write";
//	}
	
}
