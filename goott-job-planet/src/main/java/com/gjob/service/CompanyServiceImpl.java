package com.gjob.service;

import com.gjob.mapper.CompanyMapper;
import com.gjob.vo.CompanyVO;

import lombok.Setter;

public class CompanyServiceImpl implements CompanyService {

	@Setter
	private CompanyMapper companyMapper;
	
	@Override
	public int writeBoard(CompanyVO company) {
		
		companyMapper.insertBoard(company);
		return company.getCno();
	}
//
}
