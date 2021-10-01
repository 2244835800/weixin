package com.les.weixin.util.wechatUtil;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

/**
 * @Author:hepo
 * @Version:v1.0
 * @Description:程序启动后立即启动该类的run方法，每次启动都会重新创建菜单
 * @Date:2018/7/24/024
 * @Time:16:14
 */
@Component
public class MyApplicationRunner implements ApplicationRunner {
    private final static Logger log = LoggerFactory.getLogger(MyApplicationRunner.class);

    @Override
    public void run(ApplicationArguments var1) {
        log.info("MyApplicationRunner class will be execute when the project was started!");
        String accessToken = WeiXinUtil.getAccessToken().getToken();
        String menu = MenuUtil.initMenu();
        log.info(menu);
        int result = MenuUtil.createMenu(accessToken, menu);
        if (result == 0)
            log.info("菜单创建成功");
        else
            log.error("错误码" + result);
    }

}

