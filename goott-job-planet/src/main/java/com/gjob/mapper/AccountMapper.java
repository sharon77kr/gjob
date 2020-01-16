package com.gjob.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.gjob.vo.MemberVO;

@Mapper
public interface AccountMapper {

	void insertGmember(MemberVO member);

}
