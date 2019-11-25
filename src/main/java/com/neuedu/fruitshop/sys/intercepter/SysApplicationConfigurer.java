package com.neuedu.fruitshop.sys.intercepter;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class SysApplicationConfigurer implements WebMvcConfigurer {

	@Override
	public void addInterceptors(InterceptorRegistry registryAdmin) {
		// 拦截所有请求，通过判断是否有 @LoginRequired 注解 决定是否需要登录
		registryAdmin.addInterceptor(AdminLoginInterceptor()).addPathPatterns("/admin/*");
	}

	@Bean
	public SysLoginInterceptor AdminLoginInterceptor() {
		return new SysLoginInterceptor();
	}

}
