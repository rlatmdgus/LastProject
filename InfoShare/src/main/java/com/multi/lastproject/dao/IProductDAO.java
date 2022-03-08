package com.multi.lastproject.dao;

import java.util.ArrayList;

import com.multi.lastproject.model.ClothsProductVO;
import com.multi.lastproject.model.FoodProductVO;
import com.multi.lastproject.model.PrdCriteria;

public interface IProductDAO {
	
	public ArrayList<FoodProductVO> list(PrdCriteria cri);
	public ArrayList<FoodProductVO> fplist(PrdCriteria cri);
	public ArrayList<FoodProductVO> loginfplist(PrdCriteria cri);
	public int getTotal();
	public FoodProductVO getPage(String fdPrdNo);
	public int getTotalBoard(String ctgId);
	public ArrayList<ClothsProductVO> clolist(PrdCriteria cri);
	public ClothsProductVO clogetPage(String cloPrdNo);
	public int clogetTotal(String ctgId);
	public void updateCloRate(ClothsProductVO vo);
	public void updatefdRate(FoodProductVO vo);
	public ArrayList<FoodProductVO> Alllist();
	public ArrayList<ClothsProductVO> cloAlllist();
}
