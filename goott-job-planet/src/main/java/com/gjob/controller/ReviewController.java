package com.gjob.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gjob.service.ReviewService;
import com.gjob.vo.ReviewVO;


@Controller
@RequestMapping(path = { "/review" })
public class ReviewController {
	
	@Autowired
	@Qualifier("reviewService")
	private ReviewService reviewService;
	
	@GetMapping("/write")
	public String list() { // 목록보기
		
		return "/review/write"; // /WEB-INF/views/ + board/list + .jsp
		
	}
	
	@PostMapping("/write")
	@ResponseBody
	public String write(ReviewVO review, String action) {
		
		if (action.equals("review")) {
			reviewService.writeReview(review);
		}
		
		return "success"; // + " : " + reply.getRno();
	}
	
}


