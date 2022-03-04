package com.multi.lastproject.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.lastproject.model.BoardVO;
import com.multi.lastproject.model.Criteria;
import com.multi.lastproject.model.FoodProductVO;
import com.multi.lastproject.model.PrdCriteria;
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
	public String hitlist(Model model, Criteria cri, PrdCriteria cri2,HttpSession session) {
		
		
		if(session.getAttribute("sid")==null) {
		ArrayList<BoardVO> boardList=service.hitlist(cri);
		ArrayList<FoodProductVO> foodProductList=service2.fplist(cri2);
		model.addAttribute("list", boardList);
		model.addAttribute("FPlist", foodProductList);
		}else {
			if(session.getAttribute("saddress") .equals("서울")) {
				cri.setCtgId("1");
				cri2.setCtgId("1");
			}
			else if(session.getAttribute("saddress").equals("부산")) {
				cri.setCtgId("2");
				cri2.setCtgId("2");
			}
			else if(session.getAttribute("saddress") .equals("대구")) {
				cri.setCtgId("3");
				cri2.setCtgId("3");
			}
			else if(session.getAttribute("saddress") .equals("인천")) {
				cri.setCtgId("4");
				cri2.setCtgId("4");
			}
			else if(session.getAttribute("saddress") .equals("광주")) {
				cri.setCtgId("5");
				cri2.setCtgId("5");
			}
			else if(session.getAttribute("saddress").equals("대전")) {
				cri.setCtgId("6");
				cri2.setCtgId("6");
			}
			else if(session.getAttribute("saddress") .equals("울산")) {
				cri.setCtgId("7");
				cri2.setCtgId("7");
			}
			else if(session.getAttribute("saddress") .equals("세종")) {
				cri.setCtgId("8");
				cri2.setCtgId("8");
			}
			else if(session.getAttribute("saddress") .equals("경기")) {
				cri.setCtgId("9");
				cri2.setCtgId("9");
			}
			else if(session.getAttribute("saddress") .equals("강원")) {
				cri.setCtgId("10");
				cri2.setCtgId("10");
			}
			else if(session.getAttribute("saddress") .equals("충북")) {
				cri.setCtgId("11");
				cri2.setCtgId("11");
			}
			else if(session.getAttribute("saddress") .equals("충남")) {
				cri.setCtgId("12");
				cri2.setCtgId("12");
			}
			else if(session.getAttribute("saddress") .equals("경북")) {
				cri.setCtgId("13");
				cri2.setCtgId("13");
			}
			else if(session.getAttribute("saddress") .equals("경남")) {
				cri.setCtgId("14");
				cri2.setCtgId("14");
			}
			else if(session.getAttribute("saddress") .equals("전북")) {
				cri.setCtgId("15");
				cri2.setCtgId("15");
			}
			else if(session.getAttribute("saddress") .equals("전남")) {
				cri.setCtgId("16");
				cri2.setCtgId("16");
			}
			else if(session.getAttribute("saddress") .equals("제주")) {
				cri.setCtgId("17");
				cri2.setCtgId("17");
			}
			System.out.println("ctgid" +cri.getCtgId());
			ArrayList<BoardVO> boardList=service.loginhitlist(cri);
			ArrayList<FoodProductVO> foodProductList=service2.loginfplist(cri2);
			model.addAttribute("list", boardList);
			model.addAttribute("FPlist", foodProductList);
		}
		

		
		return "/index";
	}
	
}
