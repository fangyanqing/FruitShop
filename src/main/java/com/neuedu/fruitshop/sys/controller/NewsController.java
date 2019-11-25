package com.neuedu.fruitshop.sys.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.neuedu.fruitshop.entity.Admin;
import com.neuedu.fruitshop.entity.News;
import com.neuedu.fruitshop.entity.Pager;
import com.neuedu.fruitshop.entity.Result;
import com.neuedu.fruitshop.sys.service.NewsService;
import com.neuedu.fruitshop.util.Const;
@Controller
@SessionAttributes(value = { Const.SESSION_ADMIN })
public class NewsController {
	@Autowired
	private NewsService newsService;
	
	@GetMapping("notic/index")
	public String AdminIndex() {
		// 首页只打开页面，不加载数据;页面的数据使用在easy ui中通过ajax技术进行异步加载的
		return "admin/news";
		
	}
	
	@RequestMapping("admin/news")
	@ResponseBody
	public Pager<News> NewsList(@RequestParam(value = "page", defaultValue = "1") Integer page,
			@RequestParam(value = "rows", defaultValue = "10") Integer rows) {		
		Pager<News> pager = new Pager<>(page, rows);		
		List<News> newsList = newsService.findListByPager(pager);
		int total = newsService.findTotalByPager(pager);
		
		pager.setTotal(total);
		pager.setRows(newsList);
				
		return pager;
		
	}
	
	@RequestMapping("notic/add")
	@ResponseBody
	public Result doAdd(News news, ModelMap modelMap) {
		 Admin admin = (Admin) modelMap.get(Const.SESSION_ADMIN);
		 news.setAdmin(admin);
		Result result = newsService.add(news);
		return result;
	}
	
	@RequestMapping("notic/edit")
	@ResponseBody
	public Result doEdit(News news) {
		Result result = newsService.edit(news);
		return result;

	}
	
	@RequestMapping("notic/delete")	  
	  @ResponseBody 
	  public Result doDelete(Integer newsId) { 
		  List<News> list=new ArrayList<News>(); 
		  list.add(new News(newsId));
	  
		  Result result = newsService.deleteByIds(list);
		  return result;
	  
	  }
}
