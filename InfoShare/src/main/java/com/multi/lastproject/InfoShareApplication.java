package com.multi.lastproject;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import com.multi.lastproject.dao.IBoardDAO;

@SpringBootApplication
@ComponentScan(basePackages= {"com.multi.lastproject"})
@MapperScan(basePackageClasses=IBoardDAO.class)
public class InfoShareApplication {

	public static void main(String[] args) {
		SpringApplication.run(InfoShareApplication.class, args);
	}

}
