package com.gjob.service;

import java.util.HashMap;
import java.util.List;

import com.gjob.vo.C_MemberVO;
import com.gjob.vo.MemberVO;


public interface MemberService {
	
	List<MemberVO> findMember();
	List<MemberVO> findMemberWithPaging(HashMap<String, Object> params);
	MemberVO findMemberByMno(int mno);
	int findMemberCount(HashMap<String, Object> params);
	void applyAuthority(int mno);
}
