package com.gjob.service;

import java.util.HashMap;
import java.util.List;

import com.gjob.vo.NoticeVO;

public interface NoticeService {

	int writeNoticeBoard(NoticeVO notice);

	List<NoticeVO> findNoticeWithPaging(HashMap<String, Object> params);

	int findNoticeCount(HashMap<String, Object> params);

	NoticeVO findNoticeByBno(int bno);

	void updateNotice(NoticeVO board);

}
