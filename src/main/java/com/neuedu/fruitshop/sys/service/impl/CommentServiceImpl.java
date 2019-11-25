package com.neuedu.fruitshop.sys.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.neuedu.fruitshop.entity.Comment;
import com.neuedu.fruitshop.entity.Pager;
import com.neuedu.fruitshop.entity.Result;
import com.neuedu.fruitshop.sys.mapper.CommentMapper;
import com.neuedu.fruitshop.sys.service.CommentService;

@Service
@Transactional
public class CommentServiceImpl implements CommentService{
	
	@Autowired
	private CommentMapper commentMapper;

	@Override
	public List<Comment> findListByPager(Pager<Comment> pager) {
		return commentMapper.findListByPager(pager);
	}

	@Override
	public Integer findTotalByPager(Pager<Comment> pager) {
		return commentMapper.findTotalByPager(pager);
	}

	@Override
	public Result add(Comment object) {
		Result result = new Result(false, "新增评论失败！");
		boolean ret = commentMapper.add(object);
		if (ret) {
			result = new Result(true, "新增评论成功！");
		}
		return result;
	}

	@Override
	public Result edit(Comment object) {
		Result result = new Result(false, "修改评论失败！");
		boolean ret = commentMapper.edit(object);
		if (ret) {
			result = new Result(true, "修改评论成功！");
		}
		return result;
	}

	@Override
	public Result deleteByIds(List<Comment> ids) {
		Result result = new Result(false, "删除评论失败！");
		boolean ret = commentMapper.deleteByIds(ids);
		if (ret) {
			result = new Result(true, "删除评论成功！");
		}
		return result;
	}

	


}
