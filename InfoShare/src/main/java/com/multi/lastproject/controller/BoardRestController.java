package com.multi.lastproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.multi.lastproject.model.CommentVO;
import com.multi.lastproject.service.BoardService;

@RestController
public class BoardRestController {
	@Autowired
	BoardService service;
	
	 @RequestMapping("/commentList") //댓글 리스트
	    private List<CommentVO> mCommentServiceList(@RequestParam("boardNo") int boardNo){
	        return service.commentList(boardNo);
	    }
	    
	    @RequestMapping("/commentinsert") //댓글 작성 
	    private int mCommentServiceInsert(@RequestParam("boardNo") int boardNo, @RequestParam("comText") String comText,CommentVO vo){
	        	vo.setBoardNo(boardNo);
	        	vo.setComText(comText);
	        return service.commentInsert(vo);
	    }
	    
	    @RequestMapping("/update") //댓글 수정  
	    private int mCommentServiceUpdateProc(@RequestParam("comNo") int comNo, @RequestParam("comText") String comText,CommentVO vo){
	        
	 
	       vo.setComNo(comNo);
	       vo.setComText(comText);
	        
	        return service.commentUpdate(vo);
	    }
	    
	    @RequestMapping("/delete/{comNo}") //댓글 삭제  
	    private int mCommentServiceDelete(@PathVariable int comNo){
	        
	        return service.commentDelete(comNo);
	    }


	
}
