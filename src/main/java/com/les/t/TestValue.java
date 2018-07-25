package com.les.t;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Author:hepo
 * @Version:v1.0
 * @Description:
 * @Date:2018/7/24/024
 * @Time:11:10
 */
@RestController
public class TestValue {
    @Value("${AppID}")
    private  String AppID;
    @GetMapping("hs")
    public String yes(){
        return AppID;
    }
}
