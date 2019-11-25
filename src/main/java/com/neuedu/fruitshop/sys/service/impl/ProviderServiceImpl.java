package com.neuedu.fruitshop.sys.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.neuedu.fruitshop.entity.Pager;
import com.neuedu.fruitshop.entity.Provider;
import com.neuedu.fruitshop.entity.Result;
import com.neuedu.fruitshop.sys.mapper.ProviderMapper;
import com.neuedu.fruitshop.sys.service.ProviderService;

@Service
@Transactional
public class ProviderServiceImpl implements ProviderService {
	
	@Autowired
	private ProviderMapper providerMapper;

	@Override
	public List<Provider> findListByPager(Pager<Provider> pager) {
		return providerMapper.findListByPager(pager);
	}

	@Override
	public Integer findTotalByPager(Pager<Provider> pager) {
		return providerMapper.findTotalByPager(pager);
	}

	@Override
	public Result add(Provider object) {
		Result result = new Result(false, "新增供应商失败！");
		boolean ret = providerMapper.add(object);
		if (ret) {
			result = new Result(true, "新增供应商成功！");
		}
		return result;
	}

	@Override
	public Result edit(Provider object) {
		Result result = new Result(false, "修改供应商失败！");
		boolean ret = providerMapper.edit(object);
		if (ret) {
			result = new Result(true, "修改供应商成功！");
		}
		return result;
	}

	@Override
	public Result deleteByIds(List<Provider> ids) {
		Result result = new Result(false, "删除供应商失败！");
		boolean ret = providerMapper.deleteByIds(ids);
		if (ret) {
			result = new Result(true, "删除供应商成功！");
		}
		return result;
	}

	@Override
	public List<Provider> findAll() {
		// TODO Auto-generated method stub
		return providerMapper.findAll();
	}


	
	

}
