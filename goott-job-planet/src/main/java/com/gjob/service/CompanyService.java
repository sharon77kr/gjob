package com.gjob.service;

import java.util.HashMap;
import java.util.List;

import com.gjob.vo.C_MemberVO;
import com.gjob.vo.CompanyVO;
import com.gjob.vo.Industries1VO;
import com.gjob.vo.Industries2VO;

public interface CompanyService {

	int writeBoard(CompanyVO company);

	List<CompanyVO> findBoard();
	List<C_MemberVO> findBoardWithPaging(HashMap<String, Object> params);
	int findBoardCount(HashMap<String, Object> params);

	CompanyVO findCompanyByCurrMem(int mno);

	Industries1VO findIndustryByMem(int i2no);

	C_MemberVO findCompanyByMno(int mno);

}