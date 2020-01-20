package com.gjob.service;

import com.gjob.mapper.ManageMapper;
import com.gjob.vo.Industries1VO;
import com.gjob.vo.Industries2VO;
import com.gjob.vo.LicenseVO;

import lombok.Setter;

public class ManageServiceImpl implements ManageService {

	@Setter
	private ManageMapper manageMapper;

	@Override
	public void addlicense(LicenseVO license) {
		
		manageMapper.insertLicense(license);
		
	}

	@Override
	public void addindustry1(Industries1VO industry1) {

		manageMapper.insertIndustry1(industry1);
		
	}

	@Override
	public void addindustry2(Industries2VO industry2) {
		
		manageMapper.insertIndustry2(industry2);
		
	}


	
}
