package com.gjob.service;

import java.util.HashMap;
import java.util.List;

import com.gjob.vo.Industries1VO;
import com.gjob.vo.Industries2VO;
import com.gjob.vo.LicenseVO;
import com.gjob.vo.MemberVO;
import com.gjob.vo.NoticeVO;
import com.gjob.vo.Resume_PoolVO;

public interface ResumeService {

	void writeResume(Resume_PoolVO resume);


	Resume_PoolVO findResumeByCurrMem(int mno);

	Industries1VO findIndustryByMem(int i2no);

	void updateResume(Resume_PoolVO resume);

	void updateResumeExceptProfile(Resume_PoolVO resume);


	List<MemberVO> findResumeListM();

	List<MemberVO> findResumeWithPaging(HashMap<String, Object> params);

	int findResumeCount(HashMap<String, Object> params);

	MemberVO findResumeByMno(int mno);

}
