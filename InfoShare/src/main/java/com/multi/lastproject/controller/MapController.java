package com.multi.lastproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MapController {
	// map 폼 이동
	@RequestMapping("/AreaCRET")
	public String AreaCRET() {
		return "/map/AreaCRET";
	}
}
