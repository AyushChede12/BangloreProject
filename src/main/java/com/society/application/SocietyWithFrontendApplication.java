package com.society.application;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

import com.example.filedemo.property.FileStorageProperties;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@SpringBootApplication
@EnableConfigurationProperties({ FileStorageProperties.class })

public class SocietyWithFrontendApplication {

	public static void main(String[] args) {
		SpringApplication.run(SocietyWithFrontendApplication.class, args);
	}

}
