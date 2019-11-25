package com.neuedu.fruitshop.web.mapper;

import java.util.List;

import com.neuedu.fruitshop.entity.Pager;



public interface WebBaseMapper<T> {

	public List<T> findListByPager(Pager<T> pager);

	public Integer findTotalByPager(Pager<T> pager);

	public Boolean add(T object);

	public Boolean edit(T object);

	public Boolean deleteByIds(List<T> ids);
}
