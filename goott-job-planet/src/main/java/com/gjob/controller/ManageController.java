package com.gjob.controller;

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
	public String manage() {
		
		return "/manage/manage";
	}
	
	@PostMapping(path = {"/list"})
	@ResponseBody
	public String write(LicenseVO license, Industries1VO industry1, Industries2VO industry2, String action) {

		if (action.equals("license")) {
			manageService.addlicense(license);
		}
		else if (action.equals("industry")) {
			manageService.addindustry1(industry1);
			manageService.addindustry2(industry2);
		}
		
		return "success"; // + " : " + reply.getRno();
	}
	
}

