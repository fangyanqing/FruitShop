package com.neuedu.fruitshop.sys.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import com.neuedu.fruitshop.entity.Comment;
import com.neuedu.fruitshop.entity.Pager;
import com.neuedu.fruitshop.entity.Provider;
import com.neuedu.fruitshop.entity.Result;


@Mapper
@Repository
public interface CommentMapper extends SysBaseMapper<Comment> {
	
	@Select("select count(*) from comment c LEFT JOIN user u on c.userId=u.userId LEFT JOIN fruit f on c.fruitId=f.fruitId LEFT JOIN admin a on c.adminId=a.adminId")
	@Override
	public Integer findTotalByPager(Pager<Comment> pager);
	
	

}



