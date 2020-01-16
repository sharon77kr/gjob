package com.gjob.service;

import com.gjob.mapper.NoticeMapper;
import com.gjob.vo.NoticeVO;

import lombok.Setter;

public class NoticeServiceImpl implements NoticeService {

	@Setter
	private NoticeMapper noticeMapper;

	@Override
	public int writeNoticeBoard(NoticeVO notice) {
		
		noticeMapper.insertNoticeBoard(notice);
		return notice.getB_no();
	}

}
