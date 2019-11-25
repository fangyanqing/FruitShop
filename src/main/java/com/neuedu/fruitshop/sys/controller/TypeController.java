package com.neuedu.fruitshop.sys.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.neuedu.fruitshop.entity.FileResult;
import com.neuedu.fruitshop.entity.Pager;
import com.neuedu.fruitshop.entity.Result;
import com.neuedu.fruitshop.entity.Type;

import com.neuedu.fruitshop.sys.service.TypeService;
import com.neuedu.fruitshop.util.FileuploadUtil;


/**
 * 
 * @author wsl
 *
 */
@Controller
public class TypeController {
	@Autowired
	private TypeService typeService;
	
	@RequestMapping("type/index")
	public String toType() {
		
		return "admin/typeList";
		
	}
	@RequestMapping("admin/typeList")
	@ResponseBody
	public Pager<Type> categorysList(@RequestParam(value = "page", defaultValue = "1") Integer page,
			@RequestParam(value = "rows", defaultValue = "10") Integer rows) {
		Pager<Type> pager = new Pager<>(page, rows);
		// 根据查询条件进行分页查询
		List<Type> typeList = typeService.findListByPager(pager);
		Integer total = typeService.findTotalByPager(pager);
		// 把查询到数据保存到pager对象中，再转换成json返回给easy ui
		pager.setRows(typeList);
		pager.setTotal(total);

		return pager;
	}
	
	@RequestMapping("admin/typelist11")
	@ResponseBody
	public List<Type> listCategory() {
		return typeService.findAll();
	}
	
	@RequestMapping("type/add")
	@ResponseBody
	public Result doAdd(MultipartFile imageFile, Type type) {
		if (imageFile != null && !imageFile.isEmpty()) {
			FileResult fileResult = FileuploadUtil.uploadFile(imageFile);
			if (!fileResult.getSuccess()) {
				return new Result(false, fileResult.getMsg());
			}
			String serverFile = fileResult.getServerPath();
			type.setTypeImage(serverFile);
		}
		
		Result result = typeService.add(type);

		return result;
	}
	
	@RequestMapping("type/edit")
	@ResponseBody
	public Result doEdit(MultipartFile imageFile, Type type) {
		FileResult fileResult = FileuploadUtil.uploadFile(imageFile);
		if (!fileResult.getSuccess()) {
			return new Result(false, fileResult.getMsg());
		}
		String serverFile = fileResult.getServerPath();
		//goods.setImageUrl(serverFile);
		type.setTypeImage(serverFile);
		Result result = typeService.edit(type);
		return result;
	}
	
	@RequestMapping("type/delete")
	@ResponseBody
	public Result doDelete(Integer typeId) {
		List<Type> list = new ArrayList<Type>();
		list.add(new Type(typeId));
		Result result = typeService.deleteByIds(list);
		return result;
	}

}
