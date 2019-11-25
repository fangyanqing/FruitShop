package com.neuedu.fruitshop.sys.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import com.neuedu.fruitshop.entity.Pager;
import com.neuedu.fruitshop.entity.Provider;




@Mapper
@Repository
public interface ProviderMapper extends SysBaseMapper<Provider> {
	
	@Select("select count(*) from provider p LEFT JOIN admin a on p.adminId=a.adminId")
	@Override
	public Integer findTotalByPager(Pager<Provider> pager);
	
	public List<Provider> findAll();
	

}



