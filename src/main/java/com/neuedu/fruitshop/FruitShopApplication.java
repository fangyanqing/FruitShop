package com.neuedu.fruitshop;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


@SpringBootApplication
@MapperScan({"com.neuedu.fruitshop.*.mapper"})
public class FruitShopApplication {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		SpringApplication.run(FruitShopApplication.class, args);
	}

}
