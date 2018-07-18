package com.les.weixin;

import com.les.weixin.util.MenuUtil;
import com.les.weixin.util.WeiXinUtil;

/**
 * @Author:hepo
 * @Version:v1.0
 * @Description:
 * @Date:2018/7/18/018
 * @Time:11:35
 */

public class TestMenu {
    public static void main(String[] args) {
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

