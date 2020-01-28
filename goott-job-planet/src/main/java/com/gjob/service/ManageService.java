package com.gjob.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gjob.vo.Industries1VO;
import com.gjob.vo.Industries2VO;
import com.gjob.vo.LicenseVO;

@Mapper
public interface ManageService {


	List<Industries1VO> findIndustry1();

	List<Industries1VO> findIndustry1from2(String industry1);


	void addindustry1(String industry1);
	
	void addindustry2(String industry2);


	void addindustry2from1(HashMap<String, String> params);

}
