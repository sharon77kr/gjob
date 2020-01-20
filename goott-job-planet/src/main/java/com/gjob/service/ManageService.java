package com.gjob.service;

import org.apache.ibatis.annotations.Mapper;

import com.gjob.vo.Industries1VO;
import com.gjob.vo.Industries2VO;
import com.gjob.vo.LicenseVO;

@Mapper
public interface ManageService {

	void addlicense(LicenseVO license);

	void addindustry1(Industries1VO industry1);
	
	void addindustry2(Industries2VO industry2);

}
