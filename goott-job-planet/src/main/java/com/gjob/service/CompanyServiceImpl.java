package com.gjob.service;

import java.util.HashMap;
import java.util.List;

import com.gjob.mapper.CompanyMapper;
import com.gjob.vo.CompanyVO;
import com.gjob.vo.Industries1VO;
import com.gjob.vo.Industries2VO;

import lombok.Setter;

public class CompanyServiceImpl implements CompanyService {

	@Setter
	private CompanyMapper companyMapper;
	
	@Override
	public int writeBoard(CompanyVO company) {
		
		companyMapper.insertBoard(company);
		return company.getCno();
	}

	@Override
	public List<CompanyVO> findBoard() {
		
		return companyMapper.selectBoard();
	}

	@Override
	public List<CompanyVO> findBoardWithPaging(HashMap<String, Object> params) {
		
		return companyMapper.selectBoardWithPaging(params);
	}

	@Override
	public int findBoardCount(HashMap<String, Object> params) {
		
		return companyMapper.selectBoardCount(params);
	}

	@Override
	public List<Industries1VO> findIndustry1() {
		
		return companyMapper.selectIndustry1();
	}

	@Override
	public List<Industries2VO> findIndustry2() {
		
		return companyMapper.selectIndustry2();
	}

	
//
}
