package com.gjob.service;


import java.util.List;

import com.gjob.vo.ReviewVO;

public interface ReviewService {

	void writeReview(ReviewVO review);

	List<ReviewVO> getReviewListByCno(int cno);

	void deleteReview(int rno);

	void updateReview(ReviewVO review);


	

}
