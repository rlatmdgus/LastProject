package com.multi.lastproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import com.multi.lastproject.service.BoardService;

@RestController
public class BoardRestController {
	@Autowired
	BoardService service;
	

}
