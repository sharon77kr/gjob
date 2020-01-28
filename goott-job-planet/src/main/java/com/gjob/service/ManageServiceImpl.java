package com.gjob.service;

import java.util.HashMap;
import java.util.List;

import com.gjob.mapper.ManageMapper;
import com.gjob.vo.Industries1VO;
import com.gjob.vo.Industries2VO;
import com.gjob.vo.LicenseVO;

import lombok.Setter;

public class ManageServiceImpl implements ManageService {

	@Setter
	private ManageMapper manageMapper;


	@Override
	public List<Industries1VO> findIndustry1() {

		return manageMapper.selectIndustry1();
	}

	@Override
	public List<Industries1VO> findIndustry1from2(String industry1List) {
		
		return manageMapper.selectIndustry1from2(industry1List);
	}

	@Override
	public void addindustry1(String industry1) {

		manageMapper.insertIndustry1(industry1);
		
	}

	@Override
	public void addindustry2(String industry2) {

		manageMapper.insertIndustry2(industry2);
		
	}

	@Override
	public void addindustry2from1(HashMap<String, String> params) {

		manageMapper.insertIndustry2from1(params);
		
	}


	
}
