package com.gjob.service;

import com.gjob.mapper.NoticeMapper;
import com.gjob.vo.NoticeVO;

import lombok.Setter;

public class NoticeServiceImpl implements NoticeService {

	@Setter
	private NoticeMapper noticeMapper;
	
	@Override
	public int writeBoard(NoticeVO notice) {

		return 0;
	}
	
/*
	@Setter
	private NoticeMapper NoticeMapper;
	
	@Override
	public int writeBoard(NoticeVO Notice) {
		
		NoticeMapper.insertBoard(Notice);
		return Notice.getCno();
	}
*/
}
