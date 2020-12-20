package com.cafe24.iducs.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardController {
	@Autowired
	BoardDAOImpl boardDao;
	
	@RequestMapping(value = "/board/boardList.do", method = RequestMethod.GET)
	public ModelAndView BoardList(BoardDTO dto) {
		List<BoardDTO> boardList = boardDao.boardList(dto);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("lang", dto.getLang());
		mav.addObject("boardList", boardList);
		mav.setViewName("board/board-form-list.jsp");
		
		return mav;
	}
	
	@RequestMapping(value = "/board/boardRead.do", method = RequestMethod.GET)
	public ModelAndView BoardRead(BoardDTO dto) {
		BoardDTO readDto = boardDao.boardRead(dto);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("boardInfo", readDto);
		mav.setViewName("board/board-form-read.jsp");
		
		return mav;
	}
	
	@RequestMapping(value = "/board/boardWrite.do", method = RequestMethod.GET)
	public ModelAndView BoardWrite(BoardDTO dto) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("lang", dto.getLang());
		mav.setViewName("board/board-form-write.jsp");
		
		return mav;
	}
	
	@RequestMapping(value = "/board/boardWriteProc.do", method = RequestMethod.POST)
	public String BoardWriteProc(BoardDTO dto) {
		boardDao.boardWriteProc(dto);
		
		return "redirect:/board/boardList.do?lang=" + dto.getLang();
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}