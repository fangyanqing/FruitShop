package com.neuedu.fruitshop.sys.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.neuedu.fruitshop.entity.Admin;
import com.neuedu.fruitshop.entity.FileResult;
import com.neuedu.fruitshop.entity.Pager;
import com.neuedu.fruitshop.entity.Provider;
import com.neuedu.fruitshop.entity.Result;
import com.neuedu.fruitshop.entity.Type;
import com.neuedu.fruitshop.sys.service.ProviderService;
import com.neuedu.fruitshop.util.Const;
import com.neuedu.fruitshop.util.FileuploadUtil;


@Controller
@SessionAttributes(value = { Const.SESSION_ADMIN })
public class ProviderController {
	
	@Autowired
	private ProviderService providerService;
	
	@RequestMapping("provider/index")
	public String providerIndex() {
		// 首页只打开页面，不加载数据;页面的数据使用在easy ui中通过ajax技术进行异步加载的
		return "admin/providerList";
	}
	
	@RequestMapping("provider/list")
	@ResponseBody
	public Pager<Provider> providerList(@RequestParam(value = "page", defaultValue = "1") Integer page,
			@RequestParam(value = "rows", defaultValue = "10") Integer rows,HttpServletRequest request) {
		
		String providerName=request.getParameter("proname");
		System.out.println("接收到的名称是："+providerName);
		Provider provider = new Provider(providerName);
		
		Pager<Provider> pager = new Pager<>(page, rows ,provider);
		// 根据查询条件进行分页查询
		List<Provider> providerList = providerService.findListByPager(pager);

		Integer total = providerService.findTotalByPager(pager);

		// 把查询到数据保存到pager对象中，再转换成json返回给easy ui
		pager.setRows(providerList);
		pager.setTotal(total);

		return pager;
	}
	
	@RequestMapping("provider/add")
	@ResponseBody
	public Result doAdd(MultipartFile imageFile, Provider provider, ModelMap modelMap) {
		if (imageFile != null && !imageFile.isEmpty()) {
			FileResult fileResult = FileuploadUtil.uploadFile(imageFile);
			if (!fileResult.getSuccess()) {
				return new Result(false, fileResult.getMsg());
			}
			String serverFile = fileResult.getServerPath();
			provider.setProviderImage(serverFile);
		}
		
		Admin admin = (Admin) modelMap.get(Const.SESSION_ADMIN);
		
		System.out.println(admin);
		provider.setAdmin(admin);

		Result result = providerService.add(provider);

		return result;
	}
	
	@RequestMapping("provider/edit")
	@ResponseBody
	public Result doEdit(MultipartFile imageFile, Provider provider,  ModelMap modelMap) {
		if (imageFile != null && !imageFile.isEmpty()) {
			FileResult fileResult = FileuploadUtil.uploadFile(imageFile);
			if (!fileResult.getSuccess()) {
				return new Result(false, fileResult.getMsg());
			}
			String serverFile = fileResult.getServerPath();
			provider.setProviderImage(serverFile);
		}
		
		Admin admin = (Admin) modelMap.get(Const.SESSION_ADMIN);
		provider.setAdmin(admin);

		Result result = providerService.edit(provider);
		return result;
	}
	

	@RequestMapping("provider/delete")
	@ResponseBody
	public Result doDelete(Integer providerId) {
		List<Provider> list = new ArrayList<Provider>();
		list.add(new Provider(providerId));

		Result result = providerService.deleteByIds(list);
		return result;
	}
	
	@RequestMapping("provider/list11")
	@ResponseBody
	public List<Provider> listProviders() {
		return providerService.findAll();
	}
	
	

}
