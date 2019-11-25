package com.neuedu.fruitshop.web.mapper;

import java.util.List;

import com.neuedu.fruitshop.entity.Address;
import com.neuedu.fruitshop.entity.User;

/**
 * 前台收货地址
 * @author cyj
 *
 */
public interface AddressMapper extends WebBaseMapper<Address> {

	/**
	 * 根据用户查询收货地址
	 * @param user
	 * @return
	 */
	public List<Address> findByUser(User user);
	
	/**
	 * 根据Id查找
	 * @param address
	 * @return
	 */
	public Address findById(Address address);
	
	/**
	 * 根据Id删除
	 * @param address
	 * @return
	 */
	public Boolean deleteById(Address address);
	
}
