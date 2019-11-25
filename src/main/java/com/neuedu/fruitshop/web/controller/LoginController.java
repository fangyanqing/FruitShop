package com.neuedu.fruitshop.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.neuedu.fruitshop.entity.User;
import com.neuedu.fruitshop.sys.service.UserService;
import com.neuedu.fruitshop.util.Const;

/**
 * 前台用户登录控制
 * @author cyj
 *
 */
@Controller
@RequestMapping("public/")
@SessionAttributes(value = { Const.SESSION_USER, Const.LOGIN_FAIL_COUNT, Const.ERROR_MSG })
public class LoginController {
	
	@Autowired
	private UserService userService;

	@GetMapping("toLogin")
	public String toLogin() {
		return "public/login";
	}
	
	@PostMapping("doLogin")
	public String doLogin(User user, ModelMap modelMap) {
		
		Integer counter = (Integer) modelMap.get(Const.LOGIN_FAIL_COUNT);
		if (counter != null && ++counter > 5) {
			modelMap.addAttribute(Const.ERROR_MSG, "登陆失败次数过多，请稍后再试！");
			return "redirect:/error";
		}
		
		User loginUser = userService.login(user);
		
		if(loginUser != null) {
			modelMap.addAttribute(Const.SESSION_USER, loginUser);
			modelMap.remove(Const.LOGIN_FAIL_COUNT);
			modelMap.remove(Const.ERROR_MSG);
			
			return "redirect:/";
		} else {
			modelMap.addAttribute(Const.LOGIN_FAIL_COUNT, counter);
			return "redirect:/public/toLogin";
		}
		
	}
	
	@GetMapping("doLogout")
	public String doLogout(HttpSession session, ModelMap modelMap) {
		
		modelMap.remove(Const.SESSION_USER);
		session.invalidate();
		return "redirect:/";	
	}
	
}
