package com.neuedu.fruitshop.sys.service;

import java.util.List;

import com.neuedu.fruitshop.entity.Pager;
import com.neuedu.fruitshop.entity.Result;
public interface SysBaseService<T> {
	
	public List<T> findListByPager(Pager<T> pager);

	public Integer findTotalByPager(Pager<T> pager);

	public Result add(T object);

	public Result edit(T object);

	public Result deleteByIds(List<T> ids);

	
}
