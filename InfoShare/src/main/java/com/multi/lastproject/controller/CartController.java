package com.multi.lastproject.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.multi.lastproject.model.CartVO;
import com.multi.lastproject.model.MemberVO;
import com.multi.lastproject.service.CartService;

@Controller
public class CartController {

	@Autowired
	CartService service;
	
	// 장바구니에 추가
	@RequestMapping("/insertCart")
	public String insertCart(CartVO vo, HttpSession session,@RequestParam("cloPrdNo") String cloPrdNo) {
		// 로그인 성공 시 설정한 세션 sid 값 가져와서 memId에 저장
		String memId = (String)session.getAttribute("sid");
		vo.setMemId(memId);
		vo.setCloPrdNo(cloPrdNo);
		// 동일 상품이 존재하는 지 확인
		int count = service.checkPrdInCart(vo.getCloPrdNo(), memId);
				
		if(count == 0) { // 동일 상품이 존재하지 않으면 장바구니에 추가
			service.insertCart(vo);
		} else { // 존재하면 주문수량 변경
			service.updateQtyInCart(vo);
		}		
		
		//장바구니 목록 요청
		return "redirect:/cartList";
	}
	@RequestMapping("/insertFoodCart")
	public String insertFoodCart(CartVO vo, HttpSession session,@RequestParam("fdPrdNo") String fdPrdNo) {
		// 로그인 성공 시 설정한 세션 sid 값 가져와서 memId에 저장
		String memId = (String)session.getAttribute("sid");
		vo.setMemId(memId);
		vo.setFdPrdNo(fdPrdNo);
		// 동일 상품이 존재하는 지 확인
		int count = service.checkFdPrdInCart(vo.getFdPrdNo(), memId);
				System.out.println(count);
		if(count == 0) { // 동일 상품이 존재하지 않으면 장바구니에 추가
			service.insertCart(vo);
		} else { // 존재하면 주문수량 변경
			service.updateQtyInCart(vo);
		}		
		
		//장바구니 목록 요청
		return "redirect:/cartList";
	}
	
	//장바구니 목록 보기
	@RequestMapping("/cartList")
	public String cartList(Model model, HttpSession session) {
		String memId = (String) session.getAttribute("sid");
		ArrayList<CartVO> clocartList = service.cartList(memId);
		ArrayList<CartVO> fdcartList = service.fdcartList(memId);
		model.addAttribute("clocartList", clocartList);
		model.addAttribute("fdcartList", fdcartList);
		return "cart/cartListView";
	}
	@ResponseBody
	@RequestMapping("/deleteProduct")
	public int deleteProduct(@RequestParam("chbox[]") ArrayList<String> chkArr) {
		int result = 0;
		String cartNo = "";
		
		if(chkArr != null) {
			for(String i : chkArr) {
				cartNo = i;
				service.deleteProduct(cartNo);
			}
			result = 1;
		}
		
		return result;
	}
	@ResponseBody
	@RequestMapping("/deleteCart")
	public int deleteCart(HttpSession session) {
		int result = 0;
			if((String)session.getAttribute("sid")!=null) {
			service.deleteCart((String)session.getAttribute("sid"));
			
			result = 1;
			}
		
		return result;
	}
	
	//주문서 작성
		@RequestMapping("/orderForm")
		public String viewOrderForm(@RequestParam String[] memId,HttpSession session, 
															@RequestParam("fdcartNo") int[] fdcartNo,
															@RequestParam("cartNo") int[] clocartNo,
															@RequestParam("fdcartQty") int[] fdcartQty,
															@RequestParam("clocartQty") int[] clocartQty,
															Model model) {		
			

			//주문서에 정보 출력 (주문자 정보 + 장바구니 목록)
			//주문자 정보 가져오기
			MemberVO memVo = service.getMemberInfo(memId[0]);
			//전화번호 split
			String[] hp = (memVo.getMemHp()).split("-");
			
			//주문자 정보 출력하기 위해 model에 저장
			model.addAttribute("memDto", memVo);
			model.addAttribute("hp1", hp[0]);
			model.addAttribute("hp2", hp[1]);
			model.addAttribute("hp3", hp[2]);
			
			//장바구니 목록 출력
			ArrayList<CartVO> clocartList = service.cartList((String)session.getAttribute("sid"));
			ArrayList<CartVO> fdcartList = service.fdcartList((String)session.getAttribute("sid"));		
			model.addAttribute("clocartList", clocartList);
			model.addAttribute("fdcartList", fdcartList);
			return "cart/orderForm"; 
		}
		@RequestMapping("/orderComplete")
		public String orderComplete(){
			return "cart/orderComplete";
		}
}
