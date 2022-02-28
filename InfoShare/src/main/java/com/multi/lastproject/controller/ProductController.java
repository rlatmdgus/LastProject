package com.multi.lastproject.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.lastproject.model.ClothsProductVO;
import com.multi.lastproject.model.FoodProductVO;
import com.multi.lastproject.model.PrdCriteria;
import com.multi.lastproject.model.PrdPageMakerVO;
import com.multi.lastproject.service.ProductService;

@Controller
public class ProductController {
@Autowired
	ProductService service;

	@RequestMapping("/foodListView/{ctgId}")
	public String foodproductListView(@PathVariable String ctgId,Model model,PrdCriteria cri,HttpSession session,HttpServletResponse response
			) throws IOException {
		// 이때 contentType을 먼저하지 않으면, 한글이 깨질 수 있습니다.
		
		response.setHeader("Content-Type", "text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		if(session.getAttribute("sid")==null) {
			out.println("<script>alert('로그인 먼저 하세요'); </script>");
			out.flush();
			return "/member/loginForm";
		}else {
		cri.setCtgId(ctgId);
	ArrayList<FoodProductVO> foodProductList=service.list(cri);
	model.addAttribute("list", foodProductList);
	int total=service.getTotalBoard(ctgId);
	PrdPageMakerVO pageMaker=new PrdPageMakerVO(cri,total);
	model.addAttribute("ctgId",ctgId);
	model.addAttribute("pageMaker", pageMaker);
		return "board/foodproductListView";
		}
	}
	
	@RequestMapping("/readProduct")
	public String readProduct(Model model,FoodProductVO vo) {
		model.addAttribute("read", service.getPage(vo.getFdPrdNo()));
		return "board/productDetailView";
	}
	@RequestMapping("/readCloProduct")
	public String readProduct(Model model,ClothsProductVO vo) {
		model.addAttribute("read", service.clogetPage(vo.getCloPrdNo()));
		vo =service.clogetPage(vo.getCloPrdNo());
		System.out.println(vo.getCloPrdSize());
		ArrayList<String> list=new ArrayList<String>();
		ArrayList<String> clolist=new ArrayList<String>();
		String []sizeArr=vo.getCloPrdSize().split(",");
		String []colorArr=vo.getCloPrdColor().split(",");
		for(int i=0;i<sizeArr.length;i++) {
			list.add(sizeArr[i]);
		}
		for(int i=0;i<colorArr.length;i++) {
			clolist.add(colorArr[i]);
		}
		model.addAttribute("list", sizeArr);
		model.addAttribute("colorlist", colorArr);
		return "board/cloproductDetailView";
	}
	@RequestMapping("/clothsListView/{ctgId}")
	public String clothsproductListView(@PathVariable String ctgId,Model model,PrdCriteria cri,HttpServletResponse response,HttpSession session) throws IOException {
		response.setHeader("Content-Type", "text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		if(session.getAttribute("sid")==null) {
			out.println("<script>alert('로그인 먼저 하세요'); </script>");
			out.flush();
			return "/member/loginForm";
		}else {
		cri.setCtgId(ctgId);
		System.out.println("ctgId : "+ctgId);
		System.out.println("ctgId : "+cri.getCtgId());
		ArrayList<ClothsProductVO> clothProductList=service.clolist(cri);
		model.addAttribute("list", clothProductList);
		int total=service.clogetTotal(ctgId);
		System.out.println("total" +total);
		PrdPageMakerVO pageMaker=new PrdPageMakerVO(cri,total);
		model.addAttribute("ctgId",ctgId);
		model.addAttribute("pageMaker", pageMaker);
		return "board/clothsproductListView";
		}
	}
}
