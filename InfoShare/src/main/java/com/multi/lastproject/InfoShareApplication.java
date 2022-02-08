package com.multi.lastproject;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import com.multi.lastproject.controller.MainController;

@SpringBootApplication
@ComponentScan(basePackageClasses = MainController.class)
public class InfoShareApplication {

	public static void main(String[] args) {
		SpringApplication.run(InfoShareApplication.class, args);
	}

}
