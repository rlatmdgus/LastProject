package com.multi.lastproject.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.multi.lastproject.model.CartVO;

public interface ICartService {
	void insertCart(CartVO vo);	// 장바구니에 추가
	void updateQtyInCart(CartVO vo);  //동일 상품이 존재하면 수량 변경
	ArrayList<CartVO> cartList(String memId);   // 장바구니 목록
	int checkPrdInCart(String prdNo, String memId);
	int checkFdPrdInCart(String prdNo, String memId);
	ArrayList<CartVO> fdcartList(String memId);
	void deleteProduct(String cartNo);
	void deleteCart(String memId);
}
