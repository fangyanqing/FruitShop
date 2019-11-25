package com.neuedu.fruitshop.sys.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.neuedu.fruitshop.entity.FileResult;
import com.neuedu.fruitshop.entity.Pager;
import com.neuedu.fruitshop.entity.User;
import com.neuedu.fruitshop.sys.service.UserService;
import com.neuedu.fruitshop.util.Const;
import com.neuedu.fruitshop.util.FileuploadUtil;

/**
 * 会员管理
 * 
 * @author 黄海玲
 *
 */
@Controller
@RequestMapping("user/")
@SessionAttributes(value = { Const.SESSION_USER })
public class UserController {
	@Autowired
	private UserService userService;

	@GetMapping("user_index")
	private String userIndex() {
		return "admin/user_info";
	}

	@RequestMapping("user_list")
	@ResponseBody
	public Pager<User> userList(@RequestParam(value = "page", defaultValue = "1") Integer page,
			@RequestParam(value = "rows", defaultValue = "10") Integer rows, HttpServletRequest request) {
		String users = request.getParameter("userName");
		System.out.print("接受到的姓名是：" + users);
		User user = new User();
		user.setUserName(users);
		user.setNickName(users);

		Pager<User> pager = new Pager<>(page, rows, user);
		List<User> adminList = userService.findListByPager(pager);
		int total = userService.findTotalByPager(pager);
		pager.setTotal(total);
		pager.setRows(adminList);
		return pager;

	}

	@RequestMapping("edit")
	public String doEdit(MultipartFile imageFile, User user) {
		if (imageFile != null && !imageFile.isEmpty()) {
			FileResult fileResult = FileuploadUtil.uploadFile(imageFile);
			if (fileResult.getSuccess()) {
				String serverFile = fileResult.getServerPath();
				user.setUserImage(serverFile);
			}
		}
		userService.edit(user);
		return "redirect:/users/vip";
	}

	@RequestMapping("edit_password")
	public String doEditPwd(User user) {
		
		System.out.println(user);

		if (user != null) {
			boolean ret = userService.editUserPwd(user);
			if (ret) {
				return "redirect:/public/doLogout";
			} else {
				return "redirect:/users/vipPwd";
			}
		} else {
			return "redirect:/users/vipPwd";
		}

	}

	@RequestMapping("checkUserPwd")
	@ResponseBody
	public Object checkAdminPwd(@RequestBody User user) {

		if (userService.login(user) != null) {
			return "success";
		} else {
			return "fail";
		}

	}

}
