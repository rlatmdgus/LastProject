package com.multi.lastproject.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.lastproject.model.BoardVO;
import com.multi.lastproject.model.Criteria;
import com.multi.lastproject.model.FoodProductVO;
import com.multi.lastproject.model.PageMakerVO;
import com.multi.lastproject.model.PrdCriteria;
import com.multi.lastproject.model.PrdPageMakerVO;
import com.multi.lastproject.service.BoardService;
import com.multi.lastproject.service.ProductService;

@Controller
public class MainController {
	@Autowired
	BoardService service;
	@Autowired
	ProductService service2;
	
	/*@RequestMapping("/")
	public String index() {
		return "/index";
	}*/
	
	@RequestMapping("/")
	public String hitlist(Model model, Criteria cri, PrdCriteria cri2) {
		
		ArrayList<BoardVO> boardList=service.hitlist(cri);
		ArrayList<FoodProductVO> foodProductList=service2.fplist(cri2);
		
		model.addAttribute("list", boardList);
		model.addAttribute("FPlist", foodProductList);
		
		int total=service.getTotal(cri);
		PageMakerVO pageMaker=new PageMakerVO(cri,total);

		
		return "/index";
	}
}
