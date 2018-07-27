package com.les.weixin.util;

/**
 * @Author:hepo
 * @Version:v1.0
 * @Description:每次启动都会重新创建菜单
 * @Date:2018/7/24/024
 * @Time:16:14
 */

import com.les.weixin.util.MenuUtil;
import com.les.weixin.util.WeiXinUtil;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

@Component
public class MyApplicationRunner implements ApplicationRunner {

    @Override
    public void run(ApplicationArguments var1) throws Exception{
        System.out.println("MyApplicationRunner class will be execute when the project was started!");
        String accessToken  = WeiXinUtil.getAccessToken().getAccess_token();
        String menu = MenuUtil.initMenu();
        System.out.println(menu);
        int result = MenuUtil.createMenu(accessToken,menu);
        if(result==0){
            System.out.println("菜单创建成功");
        }else{
            System.out.println("错误码"+result);
        }
    }

}

