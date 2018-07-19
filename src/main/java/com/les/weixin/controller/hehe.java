package com.les.weixin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @Author:hepo
 * @Version:v1.0
 * @Description:
 * @Date:2018/7/18/018
 * @Time:15:411
 */
@Controller
public class hehe {
    @GetMapping(value = "/hello2")
    public String hello2() {
        return "index";
    }
}
