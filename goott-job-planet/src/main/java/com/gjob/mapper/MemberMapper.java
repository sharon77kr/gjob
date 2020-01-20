package com.gjob.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gjob.vo.C_MemberVO;
import com.gjob.vo.G_MemberVO;
import com.gjob.vo.MemberVO;

@Mapper
public interface MemberMapper {

	List<MemberVO> findBoard();
	
	MemberVO findMember(MemberVO member);

	List<MemberVO> findMember();

}
