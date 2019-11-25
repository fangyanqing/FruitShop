package com.neuedu.fruitshop.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.neuedu.fruitshop.entity.Address;
import com.neuedu.fruitshop.entity.User;
import com.neuedu.fruitshop.util.Const;
import com.neuedu.fruitshop.web.service.AddressService;

@Controller
@RequestMapping("users/address/")
@SessionAttributes(value = {Const.SESSION_USER})
public class AddressController {

	@Autowired
	private AddressService addressService;
	
	@RequestMapping("add")
	public String doAdd(Address address, ModelMap modelMap) {
		
		User user = (User)modelMap.get(Const.SESSION_USER);
		address.setUser(user);

		addressService.add(address);
		
		return "redirect:/users/vipAdress";
	}
	
	@RequestMapping("edit")
	public String doEdit(Address address) {

		addressService.edit(address);
		
		return "redirect:/users/vipAdress";
	}
	
	@RequestMapping("delete")
    @ResponseBody
    public Object doDelete(@RequestBody Address address) {
		boolean ret = addressService.deleteById(address);
        if (ret) {
            return "success";
        } else {
            return "fail";
        }

    }
	
	
	@RequestMapping("findAddress")
    @ResponseBody
    public Address findAddress(@RequestBody Address address) {
		System.out.println(address);
		Address addressInfo = addressService.findById(address);
		if(addressInfo != null) {
			return addressInfo;
		} else {
			return null;
		}
		

    }
}
