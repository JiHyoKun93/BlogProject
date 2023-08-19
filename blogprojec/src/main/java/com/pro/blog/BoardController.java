package com.pro.blog;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.pro.dao.WriteBoardDAO;
import com.pro.dto.WriteBoardDTO;

@Controller("com.pro.blog.BoardController")
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	WriteBoardDAO dao;
	
	@RequestMapping(value = "/boardmain.do")
	public String boardMain(Locale locale, Model model) {
		logger.info("this is BoardMain.jsp", locale);
		
		return "jsp/board/boardmain";
	}
	
	@RequestMapping(value = "/boardwrite.do")
	public String boardWrite(Locale locale, Model model) {
		logger.info("this is BoardMain.jsp", locale);
		
		return "jsp/board/boardwrite";
	}
	
	@RequestMapping(value = "/article.do")
	public ModelAndView article() {
		
		ModelAndView mav = new ModelAndView();
		
		WriteBoardDTO dto = dao.getReadData(3);
		
		System.out.println(dto.getBoard_num());
		System.out.println(dto.getBoard_title());
		System.out.println(dto.getBoard_type());
		System.out.println(dto.getBoard_content());
		System.out.println(dto.getBoard_createDate());
		
		mav.addObject("dto", dto);
		mav.setViewName("jsp/board/boardarticle");
		
		return mav;
	}
}
