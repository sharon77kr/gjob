package com.gjob.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gjob.vo.Industries1VO;
import com.gjob.vo.Industries2VO;
import com.gjob.vo.LicenseVO;
import com.gjob.vo.MemberVO;
import com.gjob.vo.NoticeVO;
import com.gjob.vo.Resume_PoolVO;


@Mapper 
public interface ResumeMapper {

	void insertResume(Resume_PoolVO resume);


	Resume_PoolVO selectResumeByCurrMem(int mno);

	Industries1VO selectIndustryByMem(int i2no);

	void updateResume(Resume_PoolVO resume);

	void updateResumeExceptProfile(Resume_PoolVO resume);


	List<MemberVO> selectResumeListM();

	List<MemberVO> selectResumeWithPaging(HashMap<String, Object> params);

	int selectResumeCount(HashMap<String, Object> params);

	MemberVO selectResumeByMno(int mno);

}








