package com.neuedu.fruitshop.sys.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neuedu.fruitshop.entity.Pager;
import com.neuedu.fruitshop.entity.Result;
import com.neuedu.fruitshop.entity.User;
import com.neuedu.fruitshop.sys.mapper.UserMapper;
import com.neuedu.fruitshop.sys.service.UserService;
/**
 * 会员信息管理
 * @author 黄海玲
 *
 */
@Service
public class UserServiceimpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;

	@Override
	public List<User> findListByPager(Pager<User> pager) {
		return userMapper.findListByPager(pager);
	}

	@Override
	public Integer findTotalByPager(Pager<User> pager) {
		return userMapper.findTotalByPager(pager);
	}

	@Override
	public Result add(User user) {
		Result result=new Result(false,"新增会员失败！");
		boolean ret=userMapper.add(user);
		if(ret) {
			result=new Result(false,"新增会员成功！");
		}
		return result;
	}

	@Override
	public Result edit(User user) {
		Result result=new Result(false,"修改会员失败！");
		boolean ret=userMapper.edit(user);
		if(ret) {
			result=new Result(false,"修改员成功！");
		}
		return result;
	}

	@Override
	public Result deleteByIds(List<User> ids) {
		Result result=new Result(false,"删除会员失败！");
		boolean ret=userMapper.deleteByIds(ids);
		if(ret) {
			result=new Result(false,"删除员成功！");
		}
		return result;
	}

	@Override
	public User login(User user) {
		// TODO Auto-generated method stub
		return userMapper.login(user);
	}

	@Override
	public User checkUserName(String userName) {
		// TODO Auto-generated method stub
		return userMapper.checkUserName(userName);
	}

	@Override
	public User findUserById(Integer userId) {
		// TODO Auto-generated method stub
		return userMapper.findUserById(userId);
	}

	@Override
	public Boolean editUserPwd(User user) {
		// TODO Auto-generated method stub
		return userMapper.editUserPwd(user);
	}

}
