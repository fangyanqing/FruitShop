package com.neuedu.fruitshop.web.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neuedu.fruitshop.entity.User;
import com.neuedu.fruitshop.sys.service.UserService;

/**
 * 前台用户注册控制
 * @author cyj
 *
 */
@Controller
@RequestMapping("public/")
public class RegController {
	
	@Autowired
	private UserService userService;
	
	private Logger logger = Logger.getLogger(RegController.class);

	@GetMapping("toReg")
	public String toReg() {
		return "public/reg";
	}
	
	@PostMapping("doReg")
	public String doLogin(User user, ModelMap modelMap) {

		logger.info(user);
		
		// 设置默认值
		user.setNickName(user.getUserName());
		user.setUserSex("男");
		
		userService.add(user);

		return "redirect:/public/toLogin";

	}
	
	@RequestMapping("checkUserName")
    @ResponseBody
    public Object checkUserName(@RequestBody User user) {
        if (userService.checkUserName(user.getUserName()) == null) {
            return "success";
        } else {
            return "fail";
        }

    }

}
