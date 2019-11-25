package com.neuedu.fruitshop.sys.service;

import java.util.List;

import com.neuedu.fruitshop.entity.Provider;
import com.neuedu.fruitshop.entity.Result;



public interface ProviderService extends SysBaseService<Provider> {
	public List<Provider> findAll();
	

}
