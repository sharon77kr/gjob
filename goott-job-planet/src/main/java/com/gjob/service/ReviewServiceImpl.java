package com.gjob.service;



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

	
	

}
