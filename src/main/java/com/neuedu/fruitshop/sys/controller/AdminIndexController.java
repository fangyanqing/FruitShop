package com.neuedu.fruitshop.sys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin/")
public class AdminIndexController {
	
	@GetMapping("main_index")
	public String toAdminIndex() {
		return "admin/index";
	}

}
