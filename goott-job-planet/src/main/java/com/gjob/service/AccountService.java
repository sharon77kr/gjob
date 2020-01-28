package com.gjob.service;

import org.apache.ibatis.annotations.Mapper;

import com.gjob.vo.C_MemberVO;
import com.gjob.vo.G_MemberVO;
import com.gjob.vo.MemberVO;

@Mapper
public interface AccountService {

	int gregisterMember(MemberVO member);

	MemberVO findMemberByEmailAndPasswd(MemberVO member);

	int gregisterMember2(G_MemberVO gmember);

	int cregisterMember(C_MemberVO cmember);
	
	MemberVO findGMemberBirth(MemberVO member);

	MemberVO findCMemberAtt(MemberVO member);

}
