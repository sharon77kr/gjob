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
	public void gregisterMember(MemberVO member) {

		accountMapper.insertGmember(member);
	}
	
	@Override
	public void gregisterMember2(G_MemberVO gmember) {
		
		accountMapper.insertGmember2(gmember);
	}
	@Override
	public void cregisterMember(C_MemberVO cmember) {
		
		accountMapper.insertCmember(cmember);
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
