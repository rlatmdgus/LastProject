package com.multi.lastproject.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.lastproject.model.BoardVO;
import com.multi.lastproject.model.Criteria;
import com.multi.lastproject.model.PageMakerVO;
import com.multi.lastproject.service.BoardService;

@Controller
public class MainController {
	@Autowired
	BoardService service;
	
	/*@RequestMapping("/")
	public String index() {
		return "/index";
	}*/
	
	@RequestMapping("/")
	public String hitlist(Model model, Criteria cri) {
		ArrayList<BoardVO> boardList=service.hitlist(cri);
		model.addAttribute("list", boardList);
		int total=service.getTotal();
		PageMakerVO pageMaker=new PageMakerVO(cri,total);
		
		model.addAttribute("pageMaker", pageMaker);
		return "/index";
	}
}
