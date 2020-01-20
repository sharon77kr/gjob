package com.gjob.service;

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
}
