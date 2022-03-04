package com.multi.lastproject.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.multi.lastproject.model.CartVO;
import com.multi.lastproject.model.MemberVO;
import com.multi.lastproject.model.OrderInfoVO;

public interface ICartDAO {
	void insertCart(CartVO vo);	// 장바구니에 추가
	int checkPrdInCart(HashMap<String, Object> map);  //동일 상품 존재 여부 확인
	int checkFdPrdInCart(HashMap<String, Object> map);  //동일 상품 존재 여부 확인
	void updateQtyInCart(CartVO vo);  //동일 상품이 존재하면 수량 변경
	ArrayList<CartVO> cartList(String memId);   // 장바구니 목록
	ArrayList<CartVO> fdcartList(String memId);   // 장바구니 목록
	void deleteProduct(String cartNo);
	void deleteCart(String memId);
	MemberVO getMemberInfo(String memId); //주문서에 사용할 회원정보 알아오기
	
	void insertOrderInfo(OrderInfoVO ordInfoDto); //주문 정보 저장
	
	
}
