package com.neuedu.fruitshop.sys.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neuedu.fruitshop.entity.Admin;
import com.neuedu.fruitshop.entity.Pager;
import com.neuedu.fruitshop.entity.Result;
import com.neuedu.fruitshop.sys.mapper.AdminMapper;
import com.neuedu.fruitshop.sys.service.AdminService;

/**
 * 
 * @author cjy
 *
 */
@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminMapper adminMapper;

	@Override
	public List<Admin> findListByPager(Pager<Admin> pager) {
		return adminMapper.findListByPager(pager);
	}

	@Override
	public Integer findTotalByPager(Pager<Admin> pager) {
		return adminMapper.findTotalByPager(pager);
	}

	@Override
	public Result add(Admin admin) {
		Result result = new Result(false, "新增管理员失败！");
		boolean ret = adminMapper.add(admin);
		if(ret) {
			result = new Result(false, "新增管理员成功！");
		}
		return result;
	}

	@Override
	public Result edit(Admin admin) {
		Result result = new Result(false, "修改管理员失败！");
		boolean ret = adminMapper.edit(admin);
		if(ret) {
			result = new Result(false, "修改管理员成功！");
		}
		return result;
	}

	@Override
	public Result deleteByIds(List<Admin> ids) {
		Result result = new Result(false, "删除管理员失败！");
		boolean ret = adminMapper.deleteByIds(ids);
		if(ret) {
			result = new Result(false, "删除管理员成功！");
		}
		return result;
	}

	@Override
	public Admin login(Admin admin) {
		return adminMapper.login(admin);
	}

}
