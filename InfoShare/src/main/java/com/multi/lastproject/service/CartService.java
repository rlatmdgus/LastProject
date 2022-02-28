package com.multi.lastproject.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.lastproject.dao.ICartDAO;
import com.multi.lastproject.model.CartVO;
@Service
public class CartService implements ICartService {
@Autowired
	ICartDAO dao;
	@Override
	public void insertCart(CartVO vo) {
		// TODO Auto-generated method stub
			dao.insertCart(vo);
	}

	@Override
	public int checkPrdInCart(String cloPrdNo, String memId) {
		HashMap<String, Object> map = new HashMap<String,Object>();
		map.put("cloPrdNo", cloPrdNo);
		map.put("memId", memId);
		
		return dao.checkPrdInCart(map);
	}

	@Override
	public void updateQtyInCart(CartVO vo) {
		// TODO Auto-generated method stub
		dao.updateQtyInCart(vo);
	}

	@Override
	public ArrayList<CartVO> cartList(String memId) {
		// TODO Auto-generated method stub
		return dao.cartList(memId);
	}

	@Override
	public int checkFdPrdInCart(String fdPrdNo, String memId) {
		HashMap<String, Object> map = new HashMap<String,Object>();
		map.put("fdPrdNo", fdPrdNo);
		map.put("memId", memId);
		
		return dao.checkFdPrdInCart(map);
	}

	@Override
	public ArrayList<CartVO> fdcartList(String memId) {
		// TODO Auto-generated method stub
		return dao.fdcartList(memId);
	}


}
