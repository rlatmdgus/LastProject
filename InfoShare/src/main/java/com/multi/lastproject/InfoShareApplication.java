package com.multi.lastproject;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import com.multi.lastproject.controller.MainController;
import com.multi.lastproject.controller.MemberController;
import com.multi.lastproject.dao.IMemberDAO;

@SpringBootApplication
@ComponentScan(basePackageClasses = MainController.class)
@ComponentScan(basePackageClasses = MemberController.class)
@MapperScan(basePackageClasses = IMemberDAO.class)
public class InfoShareApplication {

	public static void main(String[] args) {
		SpringApplication.run(InfoShareApplication.class, args);
	}

}
