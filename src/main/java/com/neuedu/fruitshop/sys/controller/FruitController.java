package com.neuedu.fruitshop.sys.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.neuedu.fruitshop.entity.Admin;
import com.neuedu.fruitshop.entity.FileResult;
import com.neuedu.fruitshop.entity.Fruit;
import com.neuedu.fruitshop.entity.Pager;
import com.neuedu.fruitshop.entity.Provider;
import com.neuedu.fruitshop.entity.Result;
import com.neuedu.fruitshop.entity.Type;
import com.neuedu.fruitshop.sys.service.FruitService;
import com.neuedu.fruitshop.util.Const;
import com.neuedu.fruitshop.util.FileuploadUtil;


/**
 * 
 * @author wsl
 *
 */
@Controller
@SessionAttributes(value = {Const.SESSION_ADMIN})
public class FruitController {
	
	@Autowired
	private FruitService fruitService;
	
	@RequestMapping("fruit/index")
	public String goodsIndex() {
		//首页只打开页面，不加载数据;页面的数据是在easyui中通过ajax技术进行异步加载的
		return "admin/fruitList";
	}
	@RequestMapping("fruit/list")
	@ResponseBody
	public Pager<Fruit> goodsList(@RequestParam(value = "page", defaultValue = "1") Integer page,
			@RequestParam(value = "rows", defaultValue = "10") Integer rows,
			String fruitName, Integer fruitStates, Integer typeId, Integer providerId) {
		
		//模糊查询--按名字查询
//		String fruitName=request.getParameter("fruitName");
//		System.out.println("接收到的水果名称："+fruitName);
//        Fruit fruit=new Fruit(fruitName);
//		Pager<Fruit> pager = new Pager<>(page, rows,fruit);
		
		//String fruitName=request.getParameter("fruitName");
		Pager<Fruit> pager = new Pager<>(page, rows);
		Fruit fruit = new Fruit();
		
		if(fruitName != null && fruitName != "") {
			fruit.setFruitName(fruitName);
			pager.setCondition(fruit);
		}
		
		
		if(fruitStates != null) {
			fruit.setFruitStates(fruitStates);
			pager.setCondition(fruit);
		}
		
		if(typeId != null) {
			fruit.setType(new Type(typeId));
			pager.setCondition(fruit);
		}
		
		if(providerId != null) {
			fruit.setProvider(new Provider(providerId));
			pager.setCondition(fruit);
		}
		
		// 根据查询条件进行分页查询
		List<Fruit> fruitsList =fruitService.findListByPager(pager);

		Integer total = fruitService.findTotalByPager(pager);

		// 把查询到数据保存到pager对象中，再转换成json返回给easy ui
		pager.setRows(fruitsList);
		pager.setTotal(total);

		return pager;
	}
	
	@RequestMapping("fruit/add")
	@ResponseBody
	public Result doAdd(MultipartFile imageFile, Fruit fruit,ModelMap modelMap) {
		if (imageFile != null && !imageFile.isEmpty()) {
			FileResult fileResult = FileuploadUtil.uploadFile(imageFile);
			if (!fileResult.getSuccess()) {
				return new Result(false, fileResult.getMsg());
			}
			String serverFile = fileResult.getServerPath();
			fruit.setFruitImage(serverFile);
		}
		
		 Admin admin = (Admin) modelMap.get(Const.SESSION_ADMIN);
		 fruit.setAdmin(admin);
		 Result result = fruitService.add(fruit);

		return result;
	}
	
	@RequestMapping("fruit/edit")
	@ResponseBody
	public Result doEdit(MultipartFile imageFile, Fruit fruit) {
		FileResult fileResult = FileuploadUtil.uploadFile(imageFile);
		if (!fileResult.getSuccess()) {
			return new Result(false, fileResult.getMsg());
		}
		String serverFile = fileResult.getServerPath();
		//goods.setImageUrl(serverFile);
		fruit.setFruitImage(serverFile);
		Result result = fruitService.edit(fruit);
		return result;
	}
	
	@RequestMapping("fruit/delete")
	@ResponseBody
	public Result doDelete(Integer fruitId) {
		List<Fruit> list = new ArrayList<Fruit>();
		list.add(new Fruit(fruitId));
		Result result = fruitService.deleteByIds(list);
		return result;
	}
	
	// 前台按类型查询
	@RequestMapping("fruit/findByType")
    @ResponseBody
    public List<Fruit> findByType(Integer typeId) {
		
		List<Fruit> findByType = fruitService.findByType(typeId);
		
		return findByType;
    }
	
	//前台按供应商查询
	@RequestMapping("fruit/findByProvider")
    @ResponseBody
    public List<Fruit> findByProvider(Integer providerId) {
		
		List<Fruit> findByProvider = fruitService.findByProvider(providerId);
		
		return findByProvider;
       
    }
	

}
