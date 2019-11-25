package com.neuedu.fruitshop.sys.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.neuedu.fruitshop.entity.News;
import com.neuedu.fruitshop.entity.Pager;
import com.neuedu.fruitshop.entity.Result;
import com.neuedu.fruitshop.sys.mapper.NewsMapper;
import com.neuedu.fruitshop.sys.service.NewsService;
@Service
@Transactional
public class NewsServiceImpl implements NewsService{

	@Autowired
	private NewsMapper newsMapper;
	
	@Override
	public List<News> findListByPager(Pager<News> pager) {
		
		return newsMapper.findListByPager(pager);
	}

	@Override
	public Integer findTotalByPager(Pager<News> pager) {
		
		return newsMapper.findTotalByPager(pager);
	}

	@Override
	public Result add(News object) {
		Result result = new Result(false, "新增资讯失败！");
		boolean ret = newsMapper.add(object);
		if(ret) {
			result = new Result(false, "新增资讯成功！");
		}
		return result;
	}

	@Override
	public Result edit(News object) {
		Result result = new Result(false, "修改资讯失败！");
		boolean ret = newsMapper.edit(object);
		if (ret) {
			result = new Result(true, "修改资讯成功！");
		}
		return result;
	}

	@Override
	public Result deleteByIds(List<News> ids) {
		Result result = new Result(false, "删除资讯失败！");
		boolean ret = newsMapper.deleteByIds(ids);
		if (ret) {
			result = new Result(true, "删除资讯成功！");
		}
		return result;
	}

}
