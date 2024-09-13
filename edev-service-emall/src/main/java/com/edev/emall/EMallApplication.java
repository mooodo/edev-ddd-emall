package com.edev.emall;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.edev")
@MapperScan({"com.edev.support.dao", "com.edev.emall.*.dao"})
public class EMallApplication {
    public static void main(String[] args) {
        SpringApplication.run(EMallApplication.class, args);
        System.out.println(".........................................");
        System.out.println(".....The E-Mall Application started......");
        System.out.println(".........................................");
    }
}
