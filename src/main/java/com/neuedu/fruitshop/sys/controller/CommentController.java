package com.neuedu.fruitshop.sys.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.neuedu.fruitshop.entity.Comment;
import com.neuedu.fruitshop.entity.FileResult;
import com.neuedu.fruitshop.entity.Pager;
import com.neuedu.fruitshop.entity.Provider;
import com.neuedu.fruitshop.entity.Result;
import com.neuedu.fruitshop.sys.service.CommentService;
import com.neuedu.fruitshop.util.FileuploadUtil;

@Controller
public class CommentController {
	@Autowired
	private CommentService commentService;
	
	@RequestMapping("comment/index")
	public String providerIndex() {
		// 首页只打开页面，不加载数据;页面的数据使用在easy ui中通过ajax技术进行异步加载的
		return "admin/commentList";
	}
	
	@RequestMapping("comment/list")
	@ResponseBody
	public Pager<Comment> commentList(@RequestParam(value = "page", defaultValue = "1") Integer page,
			@RequestParam(value = "rows", defaultValue = "10") Integer rows,HttpServletRequest request) {
		
		String commentStates=request.getParameter("commentStates");	
		Comment comment = new Comment();				
		Pager<Comment> pager = new Pager<>(page, rows);
		
		if(commentStates!=null && !"".equals(commentStates)) {
			Integer comments=Integer.parseInt(commentStates);
			System.out.println("接收到的标题名称是："+comments);
			comment.setCommentStates(comments);
			pager.setCondition(comment);
		}
	
		
		// 根据查询条件进行分页查询
		List<Comment> commentList = commentService.findListByPager(pager);

		Integer total = commentService.findTotalByPager(pager);

		// 把查询到数据保存到pager对象中，再转换成json返回给easy ui
		pager.setRows(commentList);
		pager.setTotal(total);

		return pager;
	}
	
	
	@RequestMapping("comment/add")
	@ResponseBody
	public Result doAdd(Comment comment) {
		Result result = commentService.add(comment);
		return result;
	}
	
	//修改评论的状态
	@RequestMapping("comment/edit")
	@ResponseBody
	public Result doEdit(Comment comment) {
		Result result = commentService.edit(comment);
		return result;
	}
	
	
	@RequestMapping("comment/delete")
	@ResponseBody
	public Result doDelete(Integer commentId) {
		List<Comment> list = new ArrayList<Comment>();
		list.add(new Comment(commentId));
		Result result = commentService.deleteByIds(list);
		return result;
	}

}












