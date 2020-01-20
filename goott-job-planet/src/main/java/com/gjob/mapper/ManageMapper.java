package com.gjob.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.gjob.vo.Industries1VO;
import com.gjob.vo.Industries2VO;
import com.gjob.vo.LicenseVO;

@Mapper
public interface ManageMapper {

	void insertLicense(LicenseVO license);

	void insertIndustry1(Industries1VO industry1);

	void insertIndustry2(Industries2VO industry2);
	
}
