package com.gjob.service;

import java.util.HashMap;
import java.util.List;

import com.gjob.mapper.RecruitMapper;
import com.gjob.vo.C_MemberVO;
import com.gjob.vo.CompanyVO;
import com.gjob.vo.RecruitVO;

import lombok.Setter;

public class RecruitServiceImpl implements RecruitService{

	@Setter
	private RecruitMapper recruitMapper;

	@Override
	public int findCnoByMno(int mno) {

		return recruitMapper.selectCnoByMno(mno);
	}

	@Override
	public void uploadRecruit(RecruitVO recruit) {

		recruitMapper.insertRecruit(recruit);
		
	}

	@Override
	public List<CompanyVO> findRecruit() {

		return recruitMapper.selectRecruit();
		
	}

	@Override
	public List<C_MemberVO> findRecruitWithPaging(HashMap<String, Object> params) {

		return recruitMapper.selectRecruitWithPaging(params);
		
	}

	@Override
	public int findRecruitCount(HashMap<String, Object> params) {
		
		return recruitMapper.selectRecruitCount(params);
		
	}

	@Override
	public C_MemberVO findRecruitByRecNo(int recNo) {

		return recruitMapper.selectRecruitByRecNo(recNo);
		
	}

	@Override
	public void updateRecruit(RecruitVO recruit) {

		recruitMapper.updateRecruit(recruit);
		
	}


}
