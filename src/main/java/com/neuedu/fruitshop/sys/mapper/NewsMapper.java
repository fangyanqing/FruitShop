package com.neuedu.fruitshop.sys.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.neuedu.fruitshop.entity.News;
import com.neuedu.fruitshop.entity.Pager;
@Mapper
@Repository
public interface NewsMapper extends SysBaseMapper<News>{
	/**
	 * 查询条件分页的记录数
	 */
	@Select("select count(*) from news n left join admin a on n.adminId=a.adminId")
	@Override
	public Integer findTotalByPager(Pager<News> pager);
}
