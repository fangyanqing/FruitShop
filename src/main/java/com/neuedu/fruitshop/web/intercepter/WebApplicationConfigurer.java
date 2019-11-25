package com.neuedu.fruitshop.web.intercepter;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebApplicationConfigurer implements WebMvcConfigurer {

	@Override
	public void addInterceptors(InterceptorRegistry registryUsers) {
		// 拦截所有请求，通过判断是否有 @LoginRequired 注解 决定是否需要登录
		registryUsers.addInterceptor(UsersLoginInterceptor()).addPathPatterns("/users/*");
		// registryUsers.addInterceptor(UsersLoginInterceptor()).addPathPatterns("/user/*");
	}

	@Bean
	public WebLoginInterceptor UsersLoginInterceptor() {
		return new WebLoginInterceptor();
	}

}
