package com.neuedu.fruitshop.sys.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.neuedu.fruitshop.entity.Pager;
import com.neuedu.fruitshop.entity.Result;
import com.neuedu.fruitshop.entity.Type;
import com.neuedu.fruitshop.sys.mapper.TypeMapper;
import com.neuedu.fruitshop.sys.service.TypeService;

/**
 * 
 * @author wsl
 *
 */
@Service
@Transactional
public class TypeServiceImpl implements TypeService {
	@Autowired
	private TypeMapper typeMapper;

	@Override
	public List<Type> findListByPager(Pager<Type> pager) {
		// TODO Auto-generated method stub
		return typeMapper.findListByPager(pager);
	}

	@Override
	public Integer findTotalByPager(Pager<Type> pager) {
		// TODO Auto-generated method stub
		return typeMapper.findTotalByPager(pager);
	}

	@Override
	public Result add(Type object) {
		Result result = new Result(false, "新增失败！");
		boolean ret = typeMapper.add(object);
		if (ret) {
			result = new Result(true, "新增成功！");
		}
		return result;
	}

	@Override
	public Result edit(Type object) {
		Result result = new Result(false, "修改失败！");
		boolean ret = typeMapper.edit(object);
		if (ret) {
			result = new Result(true, "修改成功！");
		}
		return result;
	}

	@Override
	public Result deleteByIds(List<Type> ids) {
		Result result = new Result(false, "删除失败！");
		boolean ret = typeMapper.deleteByIds(ids);
		if (ret) {
			result = new Result(true, "删除成功！");
		}
		return result;
	}

	@Override
	public List<Type> findAll() {
		// TODO Auto-generated method stub
		return typeMapper.findAll();
	}

}
