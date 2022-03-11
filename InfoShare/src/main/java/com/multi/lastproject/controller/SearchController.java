package com.multi.lastproject.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.lastproject.dao.IBoardDAO;
import com.multi.lastproject.dao.IProductDAO;
import com.multi.lastproject.model.BoardVO;
import com.multi.lastproject.model.FoodProductVO;
import com.multi.lastproject.model.ReviewVO;

@Controller
public class SearchController {
	
	@Autowired
	IBoardDAO boardDAO;
	
	@Autowired
	IProductDAO productDAO; 
	
	@RequestMapping("/Allsearch")
	public String searchAll(@RequestParam("Allkeyword") String keyword,
							Model model) {
		
		ArrayList<BoardVO> boardList = boardDAO.selectBoard(keyword);
		ArrayList<FoodProductVO> prdList = productDAO.selectProudct(keyword); 
		ArrayList<ReviewVO> reviewList = boardDAO.selectreview(keyword);
		
		
		model.addAttribute("boardList", boardList);
		model.addAttribute("reviewList", reviewList);
		model.addAttribute("prdList", prdList);
		
		return "/layout/searchResult";
	}
}
