package com.multi.lastproject.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.multi.lastproject.model.CartVO;
import com.multi.lastproject.model.MemberVO;
import com.multi.lastproject.model.OrderInfoVO;
import com.multi.lastproject.model.OrderProductVO;

public interface ICartService {
	void insertCart(CartVO vo);	// 장바구니에 추가
	void updateQtyInCart(CartVO vo);  //동일 상품이 존재하면 수량 변경
	ArrayList<CartVO> cartList(String memId);   // 장바구니 목록
	int checkPrdInCart(String prdNo, String memId);
	int checkFdPrdInCart(String prdNo, String memId);
	ArrayList<CartVO> fdcartList(String memId);
	void deleteProduct(String cartNo);
	void deleteCart(String memId);
	MemberVO getMemberInfo(String memId); //주문서에 사용할 회원정보 알아오기
	void insertOrderInfo(OrderInfoVO ordInfoDto); //주문 정보 저장
	void insertOrderProduct(HashMap<String, Object> map); //주문 상품 내용 저장
	ArrayList<OrderInfoVO> orderInfoList(String memId);
	ArrayList<OrderProductVO> orderProductList(String memId);
}
