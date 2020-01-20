package com.gjob.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gjob.vo.NoticeVO;

@Mapper
public interface NoticeMapper {

	void insertNoticeBoard(NoticeVO notice);

	List<NoticeVO> selectNoticeWithPaging(HashMap<String, Object> params);

	int selectNoticeCount(HashMap<String, Object> params);

	NoticeVO selectNoticeByBno(int bno);

	void updateNotice(NoticeVO board);

	void deleteNotice(int bno);
	

}








