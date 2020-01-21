package com.gjob.service;

import java.util.List;

import com.gjob.mapper.ResumeMapper;
import com.gjob.vo.Industries1VO;
import com.gjob.vo.Industries2VO;
import com.gjob.vo.LicenseVO;
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
	public List<LicenseVO> findLicense() {

		return resumeMapper.selectLicense();
		
	}

	@Override
	public List<Industries1VO> findIndustry1() {

		return resumeMapper.selectIndustry1();
		
	}

	@Override
	public List<Industries2VO> findIndustry2() {

		return resumeMapper.selectIndustry2();
		
	}
}
