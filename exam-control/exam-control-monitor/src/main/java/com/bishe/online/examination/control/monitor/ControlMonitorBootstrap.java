package com.bishe.online.examination.control.monitor;

import de.codecentric.boot.admin.server.config.EnableAdminServer;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

/**
 * @author heshiyuan
 * @description <p></p>
 * @path online-examination/com.bishe.online.examination.control.monitor
 * @date 20/12/2018 22:50
 * @github http://github.com/shiyuan2he
 * @email shiyuan4work@126.com
 * Copyright (c) 2018 shiyuan4work@126.com All rights reserved.
 * @price ¥5    微信：hewei1109
 */
@SpringBootApplication
@EnableAdminServer
@EnableDiscoveryClient
public class ControlMonitorBootstrap {
    public static void main(String[] args) {
        SpringApplication.run(ControlMonitorBootstrap.class, args);
    }
}
