package com.gjob.service;

import com.gjob.mapper.AccountMapper;
import com.gjob.vo.C_MemberVO;
import com.gjob.vo.G_MemberVO;
import com.gjob.vo.MemberVO;

import lombok.Setter;

public class AccountServiceImpl implements AccountService {

	@Setter
	private AccountMapper accountMapper;

	@Override
	public int gregisterMember(MemberVO member) {

		accountMapper.insertGmember(member);
		return member.getMno();
	}
	
	@Override
	public int gregisterMember2(G_MemberVO gmember) {
		
		accountMapper.insertGmember2(gmember);
		return gmember.getMno();
	}
	@Override
	public int cregisterMember(C_MemberVO cmember) {
		
		accountMapper.insertCmember(cmember);
		return cmember.getMno();
	}
	
	@Override
	public MemberVO findMemberByEmailAndPasswd(MemberVO member) {

		return accountMapper.selectMemberByEmailAndPasswd(member);
	}

	@Override
	public MemberVO findGMemberBirth(MemberVO member) {

		return accountMapper.selectGMemberBirth(member);
	
	}

	@Override
	public MemberVO findCMemberAtt(MemberVO member) {
		// 
		return accountMapper.selectCMemberAtt(member);
		
	}

	
}
