package com.gjob.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gjob.service.NoticeService;
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
	public String list( HttpServletRequest req, Model model) {
		
		return "notice/list";
		
	}
	
	@GetMapping(path = { "/write" })
	public String showWriteForm() { // 글쓰기 화면 보기
		
		return "notice/write";
	}
	
	@PostMapping(path = { "/write" })
	public String write(NoticeVO board, RedirectAttributes attr) {
		
		int newBoardNo = noticeService.writeNoticeBoard(board); 
		log.warn("NEW BOARD NO : " + newBoardNo);

		attr.addFlashAttribute("newBno", newBoardNo);
		return "redirect:list";
	}
}





























