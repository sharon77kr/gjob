package com.gjob.service;

import java.util.HashMap;
import java.util.List;

import com.gjob.mapper.CompanyMapper;
import com.gjob.vo.C_MemberVO;
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
	public List<C_MemberVO> findBoardWithPaging(HashMap<String, Object> params) {
		
		return companyMapper.selectBoardWithPaging(params);
	}

	@Override
	public int findBoardCount(HashMap<String, Object> params) {
		
		return companyMapper.selectBoardCount(params);
	}


	@Override
	public CompanyVO findCompanyByCurrMem(int mno) {
		
		return companyMapper.selectCompanyByCurrMem(mno);
	}

	@Override
	public Industries1VO findIndustryByMem(int i2no) {
		
		return companyMapper.selectIndustryByMem(i2no);
	}

	
//
}
