package com.gjob.service;

import java.util.HashMap;
import java.util.List;

import com.gjob.mapper.ResumeMapper;
import com.gjob.vo.Industries1VO;
import com.gjob.vo.Industries2VO;
import com.gjob.vo.LicenseVO;
import com.gjob.vo.MemberVO;
import com.gjob.vo.NoticeVO;
import com.gjob.vo.Resume_PoolVO;

import lombok.Setter;

public class ResumeServiceImpl implements ResumeService {

	@Setter
	private ResumeMapper resumeMapper;
	
	@Override
	public void writeResume(Resume_PoolVO resume) {

		resumeMapper.insertResume(resume);
		
	}

	@Override
	public Resume_PoolVO findResumeByCurrMem(int mno) {
		
		return resumeMapper.selectResumeByCurrMem(mno);
	}

	@Override
	public Industries1VO findIndustryByMem(int i2no) {
		
		return resumeMapper.selectIndustryByMem(i2no);
		
	}

	@Override
	public void updateResume(Resume_PoolVO resume) {

		resumeMapper.updateResume(resume);
		
	}

	@Override
	public void updateResumeExceptProfile(Resume_PoolVO resume) {

		resumeMapper.updateResumeExceptProfile(resume);
		
	}

	@Override
	public List<MemberVO> findResumeListM() {
		
		return resumeMapper.selectResumeListM();
		
	}

	@Override
	public List<MemberVO> findResumeWithPaging(HashMap<String, Object> params) {

		return resumeMapper.selectResumeWithPaging(params);
	}

	@Override
	public int findResumeCount(HashMap<String, Object> params) {

		return resumeMapper.selectResumeCount(params);
	}

	@Override
	public MemberVO findResumeByMno(int mno) {

		return resumeMapper.selectResumeByMno(mno);
	}

	@Override
	public MemberVO findCompanyName(int mno) {
		
		return resumeMapper.selectCompanyName(mno);
	}

	
}
