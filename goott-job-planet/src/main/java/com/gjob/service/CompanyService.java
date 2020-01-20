package com.gjob.service;

import java.util.HashMap;
import java.util.List;

import com.gjob.vo.CompanyVO;
import com.gjob.vo.Industries1VO;
import com.gjob.vo.Industries2VO;

public interface CompanyService {

	int writeBoard(CompanyVO company);

	List<CompanyVO> findBoard();
	List<CompanyVO> findBoardWithPaging(HashMap<String, Object> params);
	int findBoardCount(HashMap<String, Object> params);

	List<Industries1VO> findIndustry1();
	List<Industries2VO> findIndustry2();

}
//