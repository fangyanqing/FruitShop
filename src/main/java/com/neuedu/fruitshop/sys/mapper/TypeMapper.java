package com.neuedu.fruitshop.sys.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.neuedu.fruitshop.entity.Type;

/**
 * 水果类型Mapper接口
 * @author wsl
 *
 */
@Mapper
@Repository
public interface TypeMapper extends SysBaseMapper<Type> {
	/**
	 * 在Mapper接口中可以自定义本接口需要的接口
	 * 
	 * @return
	 */
	public List<Type> findAll();

}
