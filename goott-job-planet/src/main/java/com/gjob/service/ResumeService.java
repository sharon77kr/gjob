package com.gjob.service;

import java.util.List;

import com.gjob.vo.Industries1VO;
import com.gjob.vo.Industries2VO;
import com.gjob.vo.LicenseVO;
import com.gjob.vo.Resume_PoolVO;

public interface ResumeService {

	void writeResume(Resume_PoolVO resume);

	List<LicenseVO> findLicense();

	List<Industries1VO> findIndustry1();
	
	List<Industries2VO> findIndustry2();

}
