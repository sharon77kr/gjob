package com.gjob.service;

import com.gjob.mapper.AccountMapper;
import com.gjob.vo.MemberVO;

import lombok.Setter;

public class AccountServiceImpl implements AccountService {

	@Setter
	private AccountMapper accountMapper;

	@Override
	public void gregisterMember(MemberVO member) {

		accountMapper.insertGmember(member);
	}
	
}
