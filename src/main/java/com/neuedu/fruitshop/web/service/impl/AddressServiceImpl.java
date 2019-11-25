package com.neuedu.fruitshop.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neuedu.fruitshop.entity.Address;
import com.neuedu.fruitshop.entity.Pager;
import com.neuedu.fruitshop.entity.Result;
import com.neuedu.fruitshop.entity.User;
import com.neuedu.fruitshop.web.mapper.AddressMapper;
import com.neuedu.fruitshop.web.service.AddressService;

@Service
public class AddressServiceImpl implements AddressService {
	
	@Autowired
	private AddressMapper addressMapper;

	@Override
	public List<Address> findListByPager(Pager<Address> pager) {
		
		return addressMapper.findListByPager(pager);
	}

	@Override
	public Integer findTotalByPager(Pager<Address> pager) {
		
		return addressMapper.findTotalByPager(pager);
	}

	@Override
	public Result add(Address address) {
		Result result = new Result(false, "新增地址失败！");
		boolean ret = addressMapper.add(address);
		if(ret) {
			result = new Result(true, "新增地址成功！");
		}
		return result;
	}

	@Override
	public Result edit(Address address) {
		Result result = new Result(false, "修改地址失败！");
		boolean ret = addressMapper.edit(address);
		if(ret) {
			result = new Result(true, "修改地址成功！");
		}
		return result;
	}

	@Override
	public Result deleteByIds(List<Address> ids) {
		Result result = new Result(false, "删除地址失败！");
		boolean ret = addressMapper.deleteByIds(ids);
		if(ret) {
			result = new Result(true, "删除地址成功！");
		}
		return result;
	}

	@Override
	public List<Address> findByUser(User user) {

		return addressMapper.findByUser(user);
	}


	@Override
	public Address findById(Address address) {
		
		return addressMapper.findById(address);
	}

	@Override
	public Boolean deleteById(Address address) {
		return addressMapper.deleteById(address);
	}

}
