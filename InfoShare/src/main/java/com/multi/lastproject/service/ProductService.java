package com.multi.lastproject.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.lastproject.dao.IProductDAO;
import com.multi.lastproject.model.ClothsProductVO;
import com.multi.lastproject.model.FoodProductVO;
import com.multi.lastproject.model.PrdCriteria;

@Service
public class ProductService implements IProductService {

	@Autowired
	IProductDAO dao;
	@Override
	public ArrayList<FoodProductVO> list(PrdCriteria cri) {
		// TODO Auto-generated method stub
		return dao.list(cri);
	}
	
	public ArrayList<FoodProductVO> fplist(PrdCriteria cri){
		return dao.fplist(cri);
	}

	@Override
	public int getTotal() {
		// TODO Auto-generated method stub
		return dao.getTotal();
	}

	@Override
	public FoodProductVO getPage(String fdPrdNo) {
		// TODO Auto-generated method stub
		return dao.getPage(fdPrdNo);
	}

	@Override
	public int getTotalBoard(String ctgId) {
		// TODO Auto-generated method stub
		return dao.getTotalBoard(ctgId);
	}

	@Override
	public ArrayList<ClothsProductVO> clolist(PrdCriteria cri) {
		// TODO Auto-generated method stub
		return dao.clolist(cri);
	}

	@Override
	public ClothsProductVO clogetPage(String cloPrdNo) {
		// TODO Auto-generated method stub
		return dao.clogetPage(cloPrdNo);
	}

	@Override
	public int clogetTotal(String ctgId) {
		// TODO Auto-generated method stub
		return dao.clogetTotal(ctgId);
	}

}
