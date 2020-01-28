package com.gjob.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gjob.service.ManageService;
import com.gjob.vo.Industries1VO;
import com.gjob.vo.Industries2VO;
import com.gjob.vo.LicenseVO;


import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping(path = { "/manage" })
@Log4j
public class ManageController {
	
	@Autowired
	@Qualifier("manageService")
	private ManageService manageService;
	
	@GetMapping(path = {"/list"})
	public String manage(Model model) {

		List<Industries1VO> industry1List = manageService.findIndustry1();

		model.addAttribute("industry1List", industry1List);
		
		return "/manage/manage";
	}
	
	@PostMapping(path = {"/industryadd"})
	@ResponseBody
	public void addIndustry(String i1no, String industry1, String industry2/*, String action*/) {
		
		if(industry1.isEmpty() || industry2.isEmpty()) {
		} else {
			if(i1no.equals("0")) {
				manageService.addindustry1(industry1);
				manageService.addindustry2(industry2);
			} else {
				
				HashMap<String, String> params = new HashMap<>();
				params.put("i1no", i1no);
				params.put("industry2", industry2);
						
				manageService.addindustry2from1(params);
			}
			
		}   

		
	}
	
	@GetMapping(path = {"/getindustry2"})
	@ResponseBody
	public List<Industries1VO> get2(String industry1) {
		
		List<Industries1VO> industry1from2List = manageService.findIndustry1from2(industry1);
		
		return industry1from2List;

	}

	
}

