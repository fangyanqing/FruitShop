package com.neuedu.fruitshop.sys.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.neuedu.fruitshop.entity.Admin;
import com.neuedu.fruitshop.sys.service.AdminService;
import com.neuedu.fruitshop.util.Const;

@Controller
@RequestMapping("/")
@SessionAttributes(value = { Const.SESSION_ADMIN, Const.LOGIN_FAIL_COUNT, Const.ERROR_MSG })
public class AdminLoginController {

	@Autowired
	private AdminService adminService;

	@GetMapping("toLogin")
	public String toLogin() {
		return "admin_login";
	}

	@PostMapping("/admin/login")
	public String doLogin(Admin admin, ModelMap modelMap) {

		Integer counter = (Integer) modelMap.get(Const.LOGIN_FAIL_COUNT);
		if (counter != null && ++counter > 5) {
			modelMap.addAttribute(Const.ERROR_MSG, "登陆失败次数过多，请稍后再试！");
			return "redirect:/error";
		}

		Admin loginAdmin = adminService.login(admin);

		if (loginAdmin != null) {

			modelMap.addAttribute(Const.SESSION_ADMIN, loginAdmin);
			modelMap.remove(Const.LOGIN_FAIL_COUNT);
			modelMap.remove(Const.ERROR_MSG);

			return "redirect:/admin/main_index";
		} else {
			modelMap.addAttribute(Const.LOGIN_FAIL_COUNT, counter);
			return "redirect:/toLogin";
		}
	}

	// 安全退出
	@GetMapping("admin/doLogout")
	public String doLogout(HttpSession session, ModelMap modelMap) {

		modelMap.remove(Const.SESSION_ADMIN);
		session.invalidate();
		return "redirect:/toLogin";
	}

}
