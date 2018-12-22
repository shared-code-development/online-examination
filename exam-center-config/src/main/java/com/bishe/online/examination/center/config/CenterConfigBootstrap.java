package com.bishe.online.examination.center.config;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.config.server.EnableConfigServer;

/**
 * @author heshiyuan
 * @description <p></p>
 * @path online-examination/com.bishe.online.examination.center.config
 * @date 22/12/2018 21:29
 * @github http://github.com/shiyuan2he
 * @email shiyuan4work@126.com
 * Copyright (c) 2018 shiyuan4work@126.com All rights reserved.
 * @price ¥5    微信：hewei1109
 */
@SpringBootApplication
@EnableConfigServer
@EnableDiscoveryClient
public class CenterConfigBootstrap {
    public static void main(String[] args) {
        SpringApplication.run(CenterConfigBootstrap.class, args);
    }
}
