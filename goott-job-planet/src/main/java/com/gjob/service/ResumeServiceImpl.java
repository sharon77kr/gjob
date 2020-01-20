package com.gjob.service;

import com.gjob.mapper.ResumeMapper;
import com.gjob.vo.Resume_PoolVO;

import lombok.Setter;

public class ResumeServiceImpl implements ResumeService {

	@Setter
	private ResumeMapper resumeMapper;
	
	@Override
	public int writeResume(Resume_PoolVO resume) {
		
//		resumeMapper.insertResume(resume);
//		return resume.getCno();
		
		return 0;
	}
//
}
