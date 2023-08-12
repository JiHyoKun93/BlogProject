package com.pro.blog;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("com.pro.blog.BoardController")
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/boardmain.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String boardMain(Locale locale, Model model) {
		logger.info("this is BoardMain.jsp", locale);
		
		return "jsp/board/boardmain";
	}
	
	@RequestMapping(value = "/boardwrite.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String boardWrite(Locale locale, Model model) {
		logger.info("this is BoardMain.jsp", locale);
		
		return "jsp/board/boardwrite";
	}
}
