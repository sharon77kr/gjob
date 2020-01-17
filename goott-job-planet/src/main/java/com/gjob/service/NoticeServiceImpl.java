package com.gjob.service;

import java.util.HashMap;
import java.util.List;

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

	@Override
	public List<NoticeVO> findNoticeWithPaging(HashMap<String, Object> params) {

		return noticeMapper.selectNoticeWithPaging(params);
		
	}

	@Override
	public int findNoticeCount(HashMap<String, Object> params) {
		
		return noticeMapper.selectNoticeCount(params);
		
	}

	@Override
	public NoticeVO findNoticeByBno(int bno) {

		return noticeMapper.selectNoticeByBno(bno);
		
	}

	@Override
	public void updateNotice(NoticeVO board) {

		noticeMapper.updateNotice(board);
		
	}

}
