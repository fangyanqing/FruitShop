package com.neuedu.fruitshop.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.bind.annotation.SessionAttributes;

import com.neuedu.fruitshop.entity.Address;
import com.neuedu.fruitshop.entity.Carts;
import com.neuedu.fruitshop.entity.CartsInfo;
import com.neuedu.fruitshop.entity.Fruit;
import com.neuedu.fruitshop.entity.Pager;
import com.neuedu.fruitshop.entity.Provider;
import com.neuedu.fruitshop.entity.Type;
import com.neuedu.fruitshop.entity.User;
import com.neuedu.fruitshop.sys.service.FruitService;
import com.neuedu.fruitshop.sys.service.ProviderService;
import com.neuedu.fruitshop.sys.service.TypeService;
import com.neuedu.fruitshop.sys.service.UserService;
import com.neuedu.fruitshop.util.Const;
import com.neuedu.fruitshop.web.service.AddressService;
import com.neuedu.fruitshop.web.service.CartsInfoService;
import com.neuedu.fruitshop.web.service.CartsService;

/**
 * 前台页面控制器
 * 
 * @author wx
 *
 */
@Controller
@SessionAttributes(value = { Const.SESSION_USER })
public class IndexController {

	@Autowired
	private FruitService fruitService;

	@Autowired
	private TypeService typeService;

	@Autowired
	private ProviderService providerService;

	@Autowired
	private UserService userService;

	@Autowired
	private CartsService cartsService;

	@Autowired
	private CartsInfoService cartsInfoService;

	@Autowired
	private AddressService addressService;

	@RequestMapping("/")
	public String doIndex(Model model) {

		// 前台推荐商品板块
		List<Fruit> fruitNew = fruitService.findNewest();
		model.addAttribute("fruitsNew", fruitNew);

		// 前台促销商品模块
		List<Fruit> fruitPromotion = fruitService.findPromotion();
		model.addAttribute("fruitPromotion", fruitPromotion);

		// 查询所有类型
		List<Type> allTypes = typeService.findAll();
		model.addAttribute("allTypes", allTypes);

		// 前台当季水果模块--根据类型
		Integer typeIdInteger = allTypes.get(0).getTypeId();
		List<Fruit> findByType = fruitService.findByType(typeIdInteger);
		model.addAttribute("findByType", findByType);

		// 查询所有供应商
		List<Provider> allProviders = providerService.findAll();
		model.addAttribute("allProviders", allProviders);

		// 前台国产优选模块--根据供应商
		Integer providerId = allProviders.get(0).getProviderId();
		List<Fruit> findByProvider = fruitService.findByProvider(providerId);
		model.addAttribute("findByProvider", findByProvider);

		return "public/index";
	}

	// 商品详情页
	@RequestMapping("toProInfo")
	public String toProInfo(Fruit fruitId, ModelMap model) {
		System.out.println("=====================================");
		Fruit result = fruitService.findByFruitId(fruitId);
		System.out.println("===================当前的id是：" + fruitId);
		model.addAttribute("fruitInfo", result);

		return "public/proinfo";

	}

	// 促销中心页面
	@RequestMapping("/toProduct")
	// @ResponseBody
	public String doProduct(Model model) {
		// 前台促销商品模块
		List<Fruit> findAllPromotion = fruitService.findAllPromotion();

		model.addAttribute("findAllPromotion", findAllPromotion);

		return "public/product";

	}

	@RequestMapping("/order")
	public String doOrder() {
		return "public/order";

	}

	@RequestMapping("/order2")
	public String doOrder2() {
		return "public/order2";

	}

	@RequestMapping("/orderDetails")
	public String doOrderDetails() {
		return "public/orderDetails";

	}

	@RequestMapping("/help")
	public String doHelp() {
		return "public/help";

	}

	@RequestMapping("/message")
	public String doMessage() {
		return "public/message";

	}

	@RequestMapping("/success")
	public String doSuccess() {
		return "public/success";

	}

	@RequestMapping("/toContact")
	public String toContact() {
		return "public/contact";

	}

	// /////////// users ////////////////

	@RequestMapping("users/carts")
	public String docarts(ModelMap modelMap) {

		User user = (User) modelMap.get(Const.SESSION_USER);
		System.out.println(user.getUserId());

		Carts carts = cartsService.findCartsByUser(user);
		List<CartsInfo> CartsInfoList = cartsInfoService.findInfoByCart(carts);
		System.out.println(CartsInfoList);
		modelMap.addAttribute("UserCarts", CartsInfoList);
		return "users/carts";

	}

	@RequestMapping("users/vip")
	public String dovip(ModelMap modelMap) {

		User user = (User) modelMap.get(Const.SESSION_USER);

		User newUser = userService.findUserById(user.getUserId());
		modelMap.addAttribute(Const.SESSION_USER, newUser);

		return "users/vip";
	}

	@RequestMapping("users/vipAdress")
	public String dovipAdress(ModelMap modelMap) {

		User user = (User) modelMap.get(Const.SESSION_USER);
		List<Address> addressList = addressService.findByUser(user);
		System.out.println(addressList);
		modelMap.addAttribute("addressList", addressList);
		return "users/vipAdress";
	}

	@RequestMapping("users/vipExit")
	public String dovipExit() {
		return "users/vipExit";

	}

	@RequestMapping("users/vipMy")
	public String dovipMy() {
		return "users/vipMy";

	}

	@RequestMapping("users/vipOrder")
	public String dovipOrder() {
		return "users/vipOrder";

	}

	@RequestMapping("users/vipPwd")
	public String dovipPwd() {
		return "users/vipPwd";

	}

	@RequestMapping("users/vipTuihuo")
	public String dovipTuihuo() {
		return "users/vipTuihuo";

	}
}
