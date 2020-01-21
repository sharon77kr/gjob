package com.gjob.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.gjob.vo.C_MemberVO;
import com.gjob.vo.G_MemberVO;
import com.gjob.vo.MemberVO;

@Mapper
public interface AccountMapper {

	void insertGmember(MemberVO member);

	MemberVO selectMemberByEmailAndPasswd(MemberVO member);

	void insertGmember2(G_MemberVO gmember);

	void insertCmember(C_MemberVO cmember);
	
	MemberVO selectGMemberBirth(MemberVO member);

	MemberVO selectCMemberAtt(MemberVO member);

}
