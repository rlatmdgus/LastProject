package com.multi.lastproject.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.lastproject.model.FoodProductVO;
import com.multi.lastproject.model.PrdCriteria;
import com.multi.lastproject.model.PrdPageMakerVO;
import com.multi.lastproject.service.ProductService;

@Controller
public class ProductController {
@Autowired
	ProductService service;

	@RequestMapping("/foodListView/{ctgId}")
	public String foodproductListView(@PathVariable String ctgId,Model model,PrdCriteria cri) {
		cri.setCtgId(ctgId);
	ArrayList<FoodProductVO> foodProductList=service.list(cri);
	model.addAttribute("list", foodProductList);
	int total=service.getTotalBoard(ctgId);
	PrdPageMakerVO pageMaker=new PrdPageMakerVO(cri,total);
	model.addAttribute("ctgId",ctgId);
	model.addAttribute("pageMaker", pageMaker);
		return "board/foodproductListView";
	}
	@RequestMapping("/readProduct")
	public String readProduct(Model model,FoodProductVO vo) {
		
		model.addAttribute("read", service.getPage(vo.getFdPrdNo()));
		return "board/productDetailView";
	}
}
