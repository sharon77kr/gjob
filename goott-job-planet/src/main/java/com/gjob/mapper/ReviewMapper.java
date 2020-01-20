package com.gjob.mapper;


import org.apache.ibatis.annotations.Mapper;

import com.gjob.vo.ReviewVO;


// 인터페이스의 패키지와 이름은 
// board-mapper.xml의 namespace와 일치하도록 작성
@Mapper // root-context.xml 파일에 MapperFactoryBean을 사용해서mapper-bean을 등록하는 설정
		// 같은 패키지 경로에서 같은 이름의 BoardMapper.xml 파일을 자동으로 검색해서 연동
public interface ReviewMapper {


	ReviewVO selectReviewByRno(int cno);

	void insertReview(ReviewVO review);
	
	
	

}








