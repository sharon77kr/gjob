package com.gjob.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	// @Requestspring : mvc는 요청과 메서드를 매핑
		@RequestMapping(path = { "/" }, method = RequestMethod.GET)
		public String home(Locale locale, Model model) {
			
			return "home"; //viewName -> /WEB-INF/views/ + home + .jsp
		}

}
