package com.yeshen.admin;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@Slf4j
public class AdminApplication implements ApplicationRunner {
    @Value("${server.port}")
    private int port;

    public static void main(String[] args) {
        SpringApplication.run(AdminApplication.class, args);
    }

    @Override
    public void run(ApplicationArguments applicationArguments) {
        log.info("程序部署完成，访问地址：http://localhost:" + port);
    }
}
