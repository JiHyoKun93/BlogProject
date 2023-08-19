package com.pro.config;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.view.json.MappingJacksonJsonView;

@Configuration
public class WebConfig {

	@Bean
	MappingJacksonJsonView jsonView() {
		return new MappingJacksonJsonView();
	}
}
