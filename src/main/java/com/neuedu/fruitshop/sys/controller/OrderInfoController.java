package com.neuedu.fruitshop.sys.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neuedu.fruitshop.entity.OrderInfo;
import com.neuedu.fruitshop.entity.Pager;
import com.neuedu.fruitshop.sys.service.OrderInfoService;

@Controller
@RequestMapping("orderInfo/")
public class OrderInfoController {

	@Autowired
	private OrderInfoService orderInfoService;
	
	@GetMapping("index")
	public String OrderInfoIndex() {
		return "admin/orderInfo_info";
	}

	@RequestMapping("orderInfo_list")
	@ResponseBody
	public Pager<OrderInfo> OrderInfoList(@RequestParam(value = "page", defaultValue = "1") Integer page,
			@RequestParam(value = "rows", defaultValue = "10") Integer rows) {

		Pager<OrderInfo> pager = new Pager<>(page, rows);

		List<OrderInfo> orderInfoList = orderInfoService.findListByPager(pager);
		System.out.println(orderInfoList);
		int total = orderInfoService.findTotalByPager(pager);
		pager.setTotal(total);
		pager.setRows(orderInfoList);
		
		return pager;
	}
	
}
