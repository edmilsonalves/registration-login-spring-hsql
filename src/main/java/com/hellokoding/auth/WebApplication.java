package com.hellokoding.auth;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.embedded.FilterRegistrationBean;
import org.springframework.boot.context.embedded.ServletRegistrationBean;
import org.springframework.boot.context.web.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.DispatcherServlet;

import com.opensymphony.sitemesh.webapp.SiteMeshFilter;

@SpringBootApplication
public class WebApplication extends SpringBootServletInitializer {
    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(WebApplication.class);
    }

    public static void main(String[] args) throws Exception {
        SpringApplication.run(WebApplication.class, args);
    }
    
	@Bean
	public ServletRegistrationBean dispatcherRegistration(DispatcherServlet dispatcherServlet) {
		ServletRegistrationBean registration = new ServletRegistrationBean(dispatcherServlet);
		registration.setName("auth");
		registration.addUrlMappings("/page/*", "/none/*", "/plain/*");
		return registration;
	}

	@Bean
	public FilterRegistrationBean sitemeshFilter() {
		FilterRegistrationBean filter = new FilterRegistrationBean();
		filter.setName("sitemesh");
		filter.setFilter(new SiteMeshFilter());
		filter.addUrlPatterns("*.html");
		filter.addInitParameter("decorators-file", "/WEB-INF/decorators.xml");
		return filter;
	}
}
