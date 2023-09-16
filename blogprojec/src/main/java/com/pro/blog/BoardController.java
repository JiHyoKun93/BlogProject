package com.pro.blog;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pro.dao.WriteBoardDAO;
import com.pro.dto.WriteBoardDTO;
import com.pro.util.MyUtil;

@Controller("com.pro.blog.BoardController")
public class BoardController {

	@Autowired
	private WriteBoardDAO dao;

	@Autowired
	MyUtil myUtli;

	@RequestMapping(value = "/boardmain.do")
	public ModelAndView boardMain(HttpServletRequest request) throws Exception {

		String pageNum = request.getParameter("pageNum");

		int currentPage = 1;
		if (pageNum != null) {
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

		// Url 에 /blog/ 넣으면 배포시 에러남......
		String searchUrl = "";
		searchUrl = "/boardmain.do?searchValue=";

		int dataCount = dao.getDataCount(searchValue);

		int numPerPage = 10;
		int totalPage = myUtli.getPageCount(numPerPage, dataCount);

		System.out.println("토탈 : " + totalPage);

		if (currentPage > totalPage && totalPage > 0) {
			currentPage = totalPage;
		}
		System.out.println(currentPage);

		// start에 -1 하는 이유는 offset이 0부터 시작해야하기 때문
		int start = ((currentPage - 1) * numPerPage + 1) - 1;

		System.out.println("start = " + start);
		System.out.println("searchValue = " + searchValue);

		List<WriteBoardDTO> lists = dao.getLists(start, searchValue);

		String param = "";
		if (searchValue != null && !searchValue.equals("")) {
			param = "searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
		}

		String listUrl = "/boardmain.do";

		if (!param.equals("")) {
			listUrl = listUrl + "?" + param;
		}

		String pageIndexList = myUtli.pageIndexList(currentPage, totalPage, listUrl);

		String articleUrl = "/boardarticle.do?pageNum=" + currentPage;

		if (!param.equals("")) {
			articleUrl = articleUrl + "&" + param;
		}

		ModelAndView mav = new ModelAndView();

		mav.addObject("lists", lists);
		mav.addObject("pageIndexList", pageIndexList);
		mav.addObject("dataCount", dataCount);
		mav.addObject("articleUrl", articleUrl);
		mav.addObject("searchValue", searchValue);
		mav.addObject("searchUrl", searchUrl);

		mav.setViewName("jsp/board/boardmain");

		return mav;
	}

	@RequestMapping(value = "/boardwrite.do", method = { RequestMethod.GET })
	public String boardWrite() {

		return "jsp/board/boardwrite";
	}

	@RequestMapping(value = "/boardwrite.do", method = { RequestMethod.POST })
	public ModelAndView boardWrite(HttpServletRequest request, @RequestParam String editorData, WriteBoardDTO dto) throws Exception {
		int maxNum = dao.maxNum();
		
		dto.setBoard_num(maxNum + 1);
		dto.setBoard_content(editorData);
		
		dao.insertData(dto);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("jsp/board/boardmain");
		
		return mav;
	}

	@RequestMapping(value = "/boardupdate.do", method = { RequestMethod.GET })
	public ModelAndView boardupdate(HttpServletRequest request) throws Exception {
		
		System.out.println("boardUpdate.....");
		
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		
		String searchValue = request.getParameter("searchValue");

		if (searchValue == null) {
			searchValue = "";
		} else {
			if (request.getMethod().equalsIgnoreCase("GET")) {
				searchValue = URLDecoder.decode(searchValue, "UTF-8");
			}
		}

		WriteBoardDTO dto = dao.getReadData(board_num);
		
		System.out.println("date : " + dto.getBoard_createDate());
		
		ModelAndView mav = new ModelAndView();

		mav.addObject("dto", dto);
		
		mav.setViewName("jsp/board/boardupdate");
		return mav;
	}

	@RequestMapping(value = "/boardupdate.do", method = { RequestMethod.POST })
	public ModelAndView boardupdate(HttpServletRequest request, @RequestParam String editorData, WriteBoardDTO dto) throws Exception {
		dto.setBoard_content(editorData);
//		int board_num = Integer.parseInt(request.getParameter("board_num"));
//		dto.setBoard_num(board_num);
//		System.out.println("num : " + dto.getBoard_num());
//		System.out.println("title : " + dto.getBoard_title());
//		System.out.println("content : " + dto.getBoard_content());
//		System.out.println("type : " + dto.getBoard_type());
		System.out.println("date : " + dto.getBoard_createDate());
		
		dao.updateData(dto);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("jsp/board/boardmain");
		
		return mav;
	}

	
	@RequestMapping(value = "/boardarticle.do")
	public ModelAndView article(HttpServletRequest request) throws Exception {

		int board_num = Integer.parseInt(request.getParameter("board_num"));
		
		String searchValue = request.getParameter("searchValue");

		if (searchValue == null) {
			searchValue = "";
		} else {
			if (request.getMethod().equalsIgnoreCase("GET")) {
				searchValue = URLDecoder.decode(searchValue, "UTF-8");
			}
		}

		WriteBoardDTO dto = dao.getReadData(board_num);

		String board_createDate = dto.getBoard_createDate();

		System.out.println("searchValue : " + searchValue);
		System.out.println("board_createDate : " + board_createDate);

		List<WriteBoardDTO> prevLists = dao.getPrevReadData(searchValue, board_createDate, board_num);
		List<WriteBoardDTO> nextLists = dao.getNextReadData(searchValue, board_createDate, board_num);

		for (WriteBoardDTO dto1 : prevLists) {
			System.out.println(dto1.getBoard_title());
		}

		String articleUrl = "/boardarticle.do";

		ModelAndView mav = new ModelAndView();

		mav.addObject("dto", dto);
		mav.addObject("prevLists", prevLists);
		mav.addObject("nextLists", nextLists);
		mav.addObject("articleUrl", articleUrl);

		mav.setViewName("jsp/board/boardarticle");
		
		System.out.println("dto board num = " + dto.getBoard_num());
		System.out.println("board num = " + board_num);
		
		return mav;
	}
}
