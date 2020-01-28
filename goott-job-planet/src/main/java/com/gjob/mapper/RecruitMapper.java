package com.gjob.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gjob.vo.C_MemberVO;
import com.gjob.vo.CompanyVO;
import com.gjob.vo.RecruitVO;

@Mapper
public interface RecruitMapper {

	int selectCnoByMno(int mno);

	void insertRecruit(RecruitVO recruit);

	List<CompanyVO> selectRecruit();

	List<C_MemberVO> selectRecruitWithPaging(HashMap<String, Object> params);

	int selectRecruitCount(HashMap<String, Object> params);

	C_MemberVO selectRecruitByRecNo(int recNo);

	C_MemberVO selectRecruitByMno(int mno);

	void updateRecruit(RecruitVO recruit);
//
}
