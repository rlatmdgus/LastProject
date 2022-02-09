package com.multi.lastproject.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.lastproject.model.BoardVO;
import com.multi.lastproject.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	BoardService service;
	
	@RequestMapping("list")
	public String boardListView(Model model) {
		ArrayList<BoardVO> boardList=service.list();
		model.addAttribute("list", boardList);
		return "board/boardListView";
	}
}
