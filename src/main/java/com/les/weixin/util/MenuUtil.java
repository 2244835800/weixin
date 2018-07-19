package com.les.weixin.util;

import com.les.weixin.entity.Button;
import com.les.weixin.entity.ClickButton;
import com.les.weixin.entity.Menu;
import com.les.weixin.entity.ViewButton;
import net.sf.json.JSONObject;


/**
 * @Author:hepo
 * @Version:v1.0
 * @Description:
 * @Date:2018/7/18/018
 * @Time:11:17
 */
public class MenuUtil {

    private static final String CTRATE_MENU_URL = "https://api.weixin.qq.com/cgi-bin/menu/create?access_token=ACCESS_TOKEN";

    /**
     * 创建菜单
     *
     * @param accessToken
     * @param Menu        菜单json格式字符串
     * @return
     */
    public static int createMenu(String accessToken, String Menu) {
        int result = Integer.MIN_VALUE;
        String url = CTRATE_MENU_URL.replaceAll("ACCESS_TOKEN", accessToken);
        JSONObject json = WeiXinUtil.doPoststr(url, Menu);
        if (json != null) {
            //从返回的数据包中取数据{"errcode":0,"errmsg":"ok"}
            result = json.getInt("errcode");
        }
        return result;
    }

    public static String initMenu() {
        String result = "";
        //创建点击一级菜单
        ClickButton button11 = new ClickButton();
        button11.setName("我要爆料");
        button11.setKey("11");
        button11.setType("click");

        ClickButton button12 = new ClickButton();
        button12.setName("爆料反馈");
        button12.setKey("12");
        button12.setType("click");

        ClickButton button13 = new ClickButton();
        button13.setName("政务公开");
        button13.setKey("13");
        button13.setType("click");

        ClickButton button14 = new ClickButton();
        button14.setName("往期新闻");
        button14.setKey("14");
        button14.setType("click");

        Button button1 = new Button();
        button1.setName("微互动");
        button1.setType("click");
        button1.setSub_button(new Button[]{button11, button12, button13, button14});


        //创建跳转型一级菜单


        ClickButton button21 = new ClickButton();
        button21.setName("违章查询");
        button21.setKey("21");
        button21.setType("click");

        ClickButton button22 = new ClickButton();
        button22.setName("天气查询");
        button22.setKey("22");
        button22.setType("click");

        ClickButton button23 = new ClickButton();
        button23.setName("航班查询");
        button23.setKey("23");
        button23.setType("click");

        ClickButton button24 = new ClickButton();
        button24.setName("信息动态");
        button24.setKey("24");
        button24.setType("click");

        Button button2 = new Button();
        button2.setName("便民服务");
        button2.setType("click");
        button2.setSub_button(new Button[]{button21, button22, button23, button24});


        //创建其他类型的菜单与click型用法一致
//        ClickButton button31 = new ClickButton();
//        button31.setName("拍照发图");
//        button31.setType("pic_photo_or_album");
//        button31.setKey("31");

//        ClickButton button32 = new ClickButton();
//        button32.setName("发送位置");
//        button32.setKey("32");
//        button32.setType("location_select");
        ViewButton button31 = new ViewButton();
        button31.setName("案件跟踪");
        button31.setType("view");
        button31.setUrl("http://9d1debac.ngrok.io/test/hello3");

        ViewButton button32 = new ViewButton();
        button32.setName("案件上报");
        button32.setType("view");
        button32.setUrl("http://9d1debac.ngrok.io/test/hello2");

        ViewButton button33 = new ViewButton();
        button33.setName("新闻发布");
        button33.setType("view");
        button33.setUrl("http://9d1debac.ngrok.io/test/hello2");

        ViewButton button34 = new ViewButton();
        button34.setName("办事指南");
        button34.setType("view");
        button34.setUrl("http://9d1debac.ngrok.io/test/hello2");
        //封装到一级菜单
        Button button3 = new Button();
        button3.setName("全民城管");
        button3.setType("click");
        button3.setSub_button(new Button[]{button31, button32, button33, button34});

        //封装菜单
        Menu menu = new Menu();
        menu.setButton(new Button[]{button1, button2, button3});
        return JSONObject.fromObject(menu).toString();
    }
}
