package com.pro.blog;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pro.dao.WriteBoardDAO;
import com.pro.dto.WriteBoardDTO;

@Controller("com.pro.blog.BoardController")
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	WriteBoardDAO dao;
	
	@RequestMapping(value = "/boardmain.do")
	public ModelAndView boardMain(Locale locale, Model model) {
		logger.info("this is BoardMain.jsp", locale);
		
		List<WriteBoardDTO> lists = dao.getList();
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("lists", lists);
		mav.setViewName("jsp/board/boardmain");
		return mav;
	}
	
	@RequestMapping(value = "/boardwrite.do")
	public String boardWrite(Locale locale, Model model) {
		logger.info("this is BoardMain.jsp", locale);
		
		return "jsp/board/boardwrite";
	}
	
	@RequestMapping(value = "/boardarticle.do")
	public ModelAndView article(@RequestParam int board_num) {
		
		ModelAndView mav = new ModelAndView();
		
		WriteBoardDTO dto = dao.getReadData(board_num);
		
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
