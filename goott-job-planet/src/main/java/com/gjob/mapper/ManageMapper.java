package com.gjob.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gjob.vo.Industries1VO;
import com.gjob.vo.Industries2VO;
import com.gjob.vo.LicenseVO;
import com.gjob.vo.MemberVO;

@Mapper
public interface ManageMapper {


	List<Industries1VO> selectIndustry1();

	List<Industries1VO> selectIndustry1from2(String industry1List);

	String selectExistIndustry1(String addindustry1);

	void insertIndustry1(String industry1);
	
	void insertIndustry2(String industry2);

	void insertIndustry2from1(HashMap<String, String> params);

	MemberVO checkMemberType(MemberVO member);

	
}
