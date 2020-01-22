package com.gjob.service;

import java.util.HashMap;
import java.util.List;

import com.gjob.mapper.MemberMapper;
import com.gjob.vo.MemberVO;

import lombok.Setter;


public class MemberServiceImpl implements MemberService {
	
	@Setter
	private MemberMapper memberMapper;
	@Override
	public List<MemberVO> findMember() {

		//return boardDao.selectBoard();
		return memberMapper.findMember();
		
	}
	@Override
	public List<MemberVO> findMemberWithPaging(HashMap<String, Object> params) {
		
		return memberMapper.selectMemberWithPaging(params);
	}

	@Override
	public int findMemberCount(HashMap<String, Object> params) {
		
		return memberMapper.selectMemberCount(params);
	}
	@Override
	public MemberVO findMemberByMno(int mno) {
		// TODO Auto-generated method stub
		return null;
	}
}
