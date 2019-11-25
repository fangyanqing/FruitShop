package com.neuedu.fruitshop.sys.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.neuedu.fruitshop.entity.Admin;
import com.neuedu.fruitshop.entity.FileResult;
import com.neuedu.fruitshop.entity.Pager;
import com.neuedu.fruitshop.entity.Result;
import com.neuedu.fruitshop.sys.service.AdminService;
import com.neuedu.fruitshop.util.FileuploadUtil;

/**
 * 管理员管理
 * 
 * @author 黄海玲
 *
 */
@Controller
@RequestMapping("admin/")
public class AdminController {

	@Autowired
	private AdminService adminService;

	@GetMapping("admin_index")
	public String AdminIndex() {
		return "admin/admin_info";
	}

	@GetMapping("my_index")
	public String MyIndex() {
		return "admin/my_info";
	}

	@RequestMapping("my_list")
	@ResponseBody
	public Pager<Admin> MyList(@RequestParam(value = "page", defaultValue = "1") Integer page,
			@RequestParam(value = "rows", defaultValue = "10") Integer rows, Integer adminId) {

		Pager<Admin> pager = new Pager<>(page, rows);
		pager.setCondition(new Admin(adminId));
		List<Admin> adminList = adminService.findListByPager(pager);
		int total = adminService.findTotalByPager(pager);
		pager.setTotal(total);
		pager.setRows(adminList);
		return pager;
	}

	@RequestMapping("admin_list")
	@ResponseBody
	public Pager<Admin> AdminList(@RequestParam(value = "page", defaultValue = "1") Integer page,
			@RequestParam(value = "rows", defaultValue = "10") Integer rows, HttpServletRequest request) {

		String admins = request.getParameter("adminName");
		String role = request.getParameter("adminRole");
		String sex = request.getParameter("adminSex");

		Pager<Admin> pager = new Pager<>(page, rows);

		Admin admin = new Admin();

		if (admins != null) {
			System.out.print("接受到的姓名是：" + admins);
			admin.setAdminName(admins);
			pager.setCondition(admin);
		}

		if (sex != null) {
			System.out.print("接受到的姓名是：" + sex);
			admin.setAdminSex(sex);
			pager.setCondition(admin);
		}

		if (role != null && role != "") {
			Integer roles = Integer.parseInt(role);
			System.out.print("接受到的身份是：" + roles);
			admin.setAdminRole(roles);
			pager.setCondition(admin);
		}

		List<Admin> adminList = adminService.findListByPager(pager);
		int total = adminService.findTotalByPager(pager);

		pager.setTotal(total);
		pager.setRows(adminList);
		return pager;
	}

	@RequestMapping("add")
	@ResponseBody
	public Result doAdd(MultipartFile imageFile, Admin admin) {

		if (imageFile != null && !imageFile.isEmpty()) {
			FileResult fileResult = FileuploadUtil.uploadFile(imageFile);
			if (!fileResult.getSuccess()) {
				return new Result(false, fileResult.getMsg());
			}
			String serverFile = fileResult.getServerPath();
			admin.setAdminImage(serverFile);
		}
		Result result = adminService.add(admin);
		return result;
	}

	@RequestMapping("edit")
	@ResponseBody
	public Result doEdit(MultipartFile imageFile, Admin admin) {
		if (imageFile != null && !imageFile.isEmpty()) {
			FileResult fileResult = FileuploadUtil.uploadFile(imageFile);
			if (!fileResult.getSuccess()) {
				return new Result(false, fileResult.getMsg());
			}
			String serverFile = fileResult.getServerPath();
			admin.setAdminImage(serverFile);
		}
		Result result = adminService.edit(admin);
		return result;
	}

	@RequestMapping("delete")
	@ResponseBody
	public Result doDelete(Integer adminId) {
		List<Admin> list = new ArrayList<Admin>();
		list.add(new Admin(adminId));
		Result result = adminService.deleteByIds(list);
		return result;
	}

	@RequestMapping("checkAdminPwd")
	@ResponseBody
	public Object checkAdminPwd(@RequestBody Admin admin) {

		if (adminService.login(admin) != null) {
			return "success";
		} else {
			return "fail";
		}

	}

}
