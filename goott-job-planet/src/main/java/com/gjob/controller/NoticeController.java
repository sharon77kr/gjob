package com.gjob.controller;

import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gjob.service.NoticeService;
import com.gjob.ui.ThePager2;
import com.gjob.vo.NoticeVO;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping(path = { "/notice" })
@Log4j
public class NoticeController {

	@Autowired
	@Qualifier("noticeService")
	private NoticeService noticeService;

	@GetMapping(path = { "/list" })
	public String list(@RequestParam(defaultValue = "1") int pageNo, @RequestParam(required = false) String searchType,
			@RequestParam(required = false) String searchKey, HttpServletRequest req, Model model) {

		int pageSize = 5;
		int pagerSize = 5;
		HashMap<String, Object> params = new HashMap<>();
		int beginning = (pageNo - 1) * pageSize + 1;
		params.put("beginning", beginning);
		params.put("end", beginning + pageSize);
		params.put("searchType", searchType);
		params.put("searchKey", searchKey);

		List<NoticeVO> boards = noticeService.findNoticeWithPaging(params);
		int boardCount = noticeService.findNoticeCount(params);

		ThePager2 pager = new ThePager2(boardCount, pageNo, pageSize, pagerSize, "list", req.getQueryString());

		model.addAttribute("noticeBoard", boards);
		model.addAttribute("pager", pager);

		return "notice/list";

	}

	@GetMapping(path = { "/write" })
	public String showWriteForm() { // 글쓰기 화면 보기

		return "notice/write";
	}

	@PostMapping(path = { "/write" })
	public String write(NoticeVO board, RedirectAttributes attr) {

//		noticeService.writeNoticeBoard(board);
		int newBoardNo = noticeService.writeNoticeBoard(board);
//		log.warn("NEW BOARD NO : " + newBoardNo);

		attr.addFlashAttribute("newBno", newBoardNo);
		return "redirect:list";
	}
	
	@GetMapping(path = { "/detail" })
	public String showDetail(int bno, @RequestParam(defaultValue = "1") int pageNo, Model model, HttpServletRequest req,
			HttpServletResponse resp) {

		NoticeVO board = noticeService.findNoticeByBno(bno);
		if (board == null) {
			return "redirect:list";
		}

		// 1-2. 기존에 읽은 글번호 목록을 Cookie에서 읽기
		String bnoRead = "";
		Cookie[] cookies = req.getCookies();
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("bno_read")) {
				bnoRead = cookie.getValue();
			}
		}
	 
		// 2. 조회된 데이터를 View에서 사용할 수 있도록 저장
		model.addAttribute("noticeBoard", board);

		// 3. View로 이동
		return "notice/detail";
	}
	
	@GetMapping(path = {"/update"})
	public String showUpdateForm(int bno, Model model) {

		//1. bno를 사용해서 게시물 조회
		NoticeVO board = noticeService.findNoticeByBno(bno);
		if (board == null) {
			return "redirect:list";
		}
		
		//2. 조회된 데이터를 View에서 사용할 수 있도록 저장
		model.addAttribute("noticeBoard", board);
		
		return "notice/update";
	}
	
	@PostMapping(path = { "/update" })
	public String update(NoticeVO board, int pageNo,
			@RequestParam(required = false) String searchType,
			@RequestParam(required = false) String searchKey) {
		
		noticeService.updateNotice(board);

		String encodedKey = "";
		try {
			//URL경로에서 한글을 처리하기 위한 구현
			encodedKey = URLEncoder.encode(searchKey, "utf-8");
		} catch(Exception ex) {
		}

		return String.format(
				"redirect:detail?bno=%d&pageNo=%d&searchType=%s&searchKey=%s", 
				board.getBno(), pageNo, searchType, encodedKey);
	}
	
	@GetMapping(path = { "/delete" })
	public String delete(int bno, int pageNo,
			@RequestParam(required = false) String searchType,
			@RequestParam(required = false) String searchKey) {
		
		noticeService.deleteNotice(bno);
		
		String encodedKey = "";
		try {
			//URL경로에서 한글을 처리하기 위한 구현
			encodedKey = URLEncoder.encode(searchKey, "utf-8");
		} catch(Exception ex) {
		}
		
		return String.format("redirect:list?pageNo=%d&searchKey=%s&searchType=%s", 
							 pageNo, encodedKey, searchType);
	}
	
}
