package com.gjob.service;

import org.apache.ibatis.annotations.Mapper;

import com.gjob.vo.C_MemberVO;
import com.gjob.vo.G_MemberVO;
import com.gjob.vo.MemberVO;

@Mapper
public interface AccountService {

	void gregisterMember(MemberVO member);

	MemberVO findMemberByEmailAndPasswd(MemberVO member);

	void gregisterMember2(G_MemberVO gmember);

	void cregisterMember(C_MemberVO cmember);
	
	MemberVO findGMemberBirth(MemberVO member);

	MemberVO findCMemberAtt(MemberVO member);

}
