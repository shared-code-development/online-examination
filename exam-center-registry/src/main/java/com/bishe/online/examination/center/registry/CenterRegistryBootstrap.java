package com.bishe.online.examination.center.registry;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;
/**
 * @description <p>微服务注册中心：启动一个服务注册中心提供给其他应用进行对话</p>
 * @author heshiyuan 
 * @date 20/12/2018 22:27
 * @email shiyuan4work@sina.com
 * @github https://github.com/shiyuan2he.git
 * Copyright (c) 2016 shiyuan4work@sina.com All rights reserved
 */
@EnableEurekaServer
@SpringBootApplication
public class CenterRegistryBootstrap {
    public static void main(String[] args) {
        SpringApplication.run(CenterRegistryBootstrap.class, args);
    }
}
