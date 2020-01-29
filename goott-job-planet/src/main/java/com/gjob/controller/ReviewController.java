package com.gjob.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
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
	
	@GetMapping(path= {"/list-by/{cno}"})
	public String listByCno(@PathVariable int cno, Model model) {
		
		List<ReviewVO> reviews = reviewService.getReviewListByCno(cno);
		
		model.addAttribute("reviews", reviews);
		
		return "review/write-list";
		
	}
	
	@DeleteMapping(path = { "/delete/{rno}" }) // path string의 {} -> 데이터
	@ResponseBody
	public String delete(@PathVariable int rno) {
		
		reviewService.deleteReview(rno);
		
		return "success";
	}
	
	@PutMapping(path = { "/update" }, consumes = "application/json")
	@ResponseBody
	public String update(@RequestBody ReviewVO review) { //@RequestBody : 요청 본문을 직접 읽어서 객체 매핑
		
		reviewService.updateReview(review);
		
		return "successs";
	}
	
}


