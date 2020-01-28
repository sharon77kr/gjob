package com.gjob.service;



import java.util.List;

import com.gjob.mapper.ReviewMapper;
import com.gjob.vo.ReviewVO;

import lombok.Setter;

public class ReviewServiceImpl implements ReviewService {

	@Setter
	private ReviewMapper reviewMapper;
	
	@Override
	public void writeReview(ReviewVO review) {
		
		reviewMapper.insertReview(review);
		
	}

	@Override
	public List<ReviewVO> getReviewListByCno(int cno) {
		
		return reviewMapper.selectReviewsByCno(cno);
	}

	@Override
	public void deleteReview(int rno) {


		reviewMapper.deleteReview(rno);
		
	}

	@Override
	public void updateReview(ReviewVO review) {
		
		reviewMapper.updateReview(review);
		
	}


}
