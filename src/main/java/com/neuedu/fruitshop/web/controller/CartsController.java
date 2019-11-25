package com.neuedu.fruitshop.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neuedu.fruitshop.entity.Carts;
import com.neuedu.fruitshop.entity.Pager;
import com.neuedu.fruitshop.web.service.CartsService;


@Controller
public class CartsController {
    @Autowired
	private  CartsService cartsService;
    
//	@GetMapping("carts/carts_index")
//	public String CartsIndex(Model model) {
//	
//		List<Carts> carts=cartsService.findAllCarts();
//		System.out.println(carts);
//		model.addAttribute("cartlist",carts);
//		return "users/carts";
//	}
	

	/*
	 * @RequestMapping("carts/list")
	 * 
	 * @ResponseBody public Pager<Carts> goodsList(@RequestParam(value = "page",
	 * defaultValue = "1") Integer page,
	 * 
	 * @RequestParam(value = "rows", defaultValue = "10") Integer rows) {
	 * Pager<Carts> pager = new Pager<>(page,rows); // 根据查询条件进行分页查询 List<Carts>
	 * cartsList =cartsService.findListByPager(pager); Integer total =
	 * cartsService.findTotalByPager(pager); // 把查询到数据保存到pager对象中，再转换成json返回给easy ui
	 * pager.setRows(cartsList); pager.setTotal(total); return pager; }
	 */
	
	
	
	
	

}
