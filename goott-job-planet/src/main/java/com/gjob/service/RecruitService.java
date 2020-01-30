package com.gjob.service;

import java.util.HashMap;
import java.util.List;

import com.gjob.vo.C_MemberVO;
import com.gjob.vo.CompanyVO;
import com.gjob.vo.RecruitVO;

public interface RecruitService {

	int findCnoByMno(int mno);

	void uploadRecruit(RecruitVO recruit);

	List<CompanyVO> findRecruit();

	List<C_MemberVO> findRecruitWithPaging(HashMap<String, Object> params);

	int findRecruitCount(HashMap<String, Object> params);

	C_MemberVO findRecruitByRecNo(int recNo);

	void updateRecruit(RecruitVO recruit);

	List<C_MemberVO> findRecruitNew();

	List<C_MemberVO> findCompany();

//

}
