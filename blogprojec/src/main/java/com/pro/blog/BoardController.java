package com.pro.blog;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pro.dao.WriteBoardDAO;
import com.pro.dto.WriteBoardDTO;
import com.pro.util.MyUtil;

@Controller("com.pro.blog.BoardController")
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private WriteBoardDAO dao;
	
	@Autowired
	MyUtil myUtli;
	
	@RequestMapping(value = "/boardmain.do")
	public ModelAndView boardMain(HttpServletRequest request) throws Exception {
		
		String pageNum = request.getParameter("pageNum");
		
		int currentPage = 1;
		if(pageNum != null) {
			currentPage = Integer.parseInt(pageNum);
		}
		
		String searchValue = request.getParameter("searchValue");

		if (searchValue == null) {
			searchValue = "";
		} else {
			if (request.getMethod().equalsIgnoreCase("GET")) {
				searchValue = URLDecoder.decode(searchValue, "UTF-8");
			}
		}
		

		int dataCount = dao.getDataCount(searchValue);

		int numPerPage = 5;
		int totalPage = myUtli.getPageCount(numPerPage, dataCount);
		if (currentPage > totalPage) {
			currentPage = totalPage;
		}

		int start = (currentPage - 1) * numPerPage + 1;
		int end = currentPage * numPerPage;
		
		List<WriteBoardDTO> lists = dao.getLists(start, end, searchValue);
		
		String param = "";
		if (searchValue != null && !searchValue.equals("")) {
			param = "searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
		}

		String listUrl = "/list.action";
		if (!param.equals("")) {
			listUrl = listUrl + "?" + param;
		}

		String pageIndexList = myUtli.pageIndexList(currentPage, totalPage, listUrl);

		String articleUrl = "/article.action?pageNum=" + currentPage;

		if (!param.equals("")) {
			articleUrl = articleUrl + "&" + param;
		}
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("lists", lists);
		mav.addObject("pageIndexList", pageIndexList);
		mav.addObject("dataCount", dataCount);
		mav.addObject("articleUrl", articleUrl);
		
		mav.setViewName("jsp/board/boardmain");
		return mav;
	}
	
	@RequestMapping(value = "/boardwrite.do")
	public String boardWrite() {
		
		return "jsp/board/boardwrite";
	}
	
	@RequestMapping(value = "/boardarticle.do")
	public ModelAndView article(@RequestParam int board_num) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		WriteBoardDTO dto = dao.getReadData(board_num);
		
		mav.addObject("dto", dto);
		mav.setViewName("jsp/board/boardarticle");
		
		return mav;
	}
}
