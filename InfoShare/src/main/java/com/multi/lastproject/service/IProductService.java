package com.multi.lastproject.service;

import java.util.ArrayList;

import com.multi.lastproject.model.FoodProductVO;
import com.multi.lastproject.model.PrdCriteria;

public interface IProductService {
	
	public ArrayList<FoodProductVO> list(PrdCriteria cri);
	public int getTotal();
	public FoodProductVO getPage(String fdPrdNo);
	public int getTotalBoard(String ctgId);
}
