package com.les.weixin.util.wechatUtil;

import com.les.weixin.entity.Button;
import com.les.weixin.entity.ButtonClick;
import com.les.weixin.entity.Menu;
import com.les.weixin.entity.ButtonView;
import com.les.weixin.util.OtherUtil.AppProperties;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Component;


/**
 * @Author:hepo
 * @Version:v1.0
 * @Description:
 * @Date:2018/7/18/018
 * @Time:11:17
 */
@Component
public class MenuUtil {

    private static final String CTRATE_MENU_URL = "https://api.weixin.qq.com/cgi-bin/menu/create?access_token=ACCESS_TOKEN";

//    private static String appID;
//
//    private static String baseUrl;
//
//    @Value("${AppID}")
//    public  void setAppID(String appID) {
//        MenuUtil.appID = appID;
//    }
//
//    @Value("${baseUrl}")
//    public  void setBaseUrl(String baseUrl) {
//        MenuUtil.baseUrl = baseUrl;
//    }

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
        if (json != null)
            //从返回的数据包中取数据{"errcode":0,"errmsg":"ok"}
            result = json.getInt("errcode");
        return result;
    }

    public static String initMenu() {
        String result = "";
        //创建点击一级菜单
        ButtonClick button11 = new ButtonClick();
        button11.setName("我要爆料");
        button11.setKey("11");
        button11.setType("click");

        ButtonClick button12 = new ButtonClick();
        button12.setName("爆料反馈");
        button12.setKey("12");
        button12.setType("click");

        ButtonClick button13 = new ButtonClick();
        button13.setName("政务公开");
        button13.setKey("13");
        button13.setType("click");

        ButtonClick button14 = new ButtonClick();
        button14.setName("往期新闻");
        button14.setKey("14");
        button14.setType("click");

        Button button1 = new Button();
        button1.setName("微互动");
        button1.setType("click");
        button1.setSub_button(new Button[]{button11, button12, button13, button14});

        //创建跳转型一级菜单

        ButtonClick button21 = new ButtonClick();
        button21.setName("违章查询");
        button21.setKey("21");
        button21.setType("click");

        ButtonClick button22 = new ButtonClick();
        button22.setName("天气查询");
        button22.setKey("22");
        button22.setType("click");

        ButtonClick button23 = new ButtonClick();
        button23.setName("航班查询");
        button23.setKey("23");
        button23.setType("click");

        ButtonClick button24 = new ButtonClick();
        button24.setName("信息动态");
        button24.setKey("24");
        button24.setType("click");

        Button button2 = new Button();
        button2.setName("便民服务");
        button2.setType("click");
        button2.setSub_button(new Button[]{button21, button22, button23, button24});

        //创建其他类型的菜单与click型用法一致
//        ButtonClick button31 = new ButtonClick();
//        button31.setName("拍照发图");
//        button31.setType("pic_photo_or_album");
//        button31.setKey("31");

//        ButtonClick button32 = new ButtonClick();
//        button32.setName("发送位置");
//        button32.setKey("32");
//        button32.setType("location_select");
        ButtonView button31 = new ButtonView();
        button31.setName("案件上报");
        button31.setType("view");
        button31.setUrl("https://open.weixin.qq.com/connect/oauth2/authorize?appid="+ AppProperties.getValue("AppID")+ "&redirect_uri=" + AppProperties.getValue("baseUrl")  + "/addTipServlet&response_type=code&scope=snsapi_userinfo&state=STATE#wechat_redirect");
        System.out.println("addTipServlet url is "+button31.getUrl());
        ButtonView button32 = new ButtonView();
        button32.setName("我的案件");
        button32.setType("view");
        button32.setUrl("https://open.weixin.qq.com/connect/oauth2/authorize?appid="+ AppProperties.getValue("AppID")+ "&redirect_uri=" + AppProperties.getValue("baseUrl") + "/tipListServlet&response_type=code&scope=snsapi_userinfo&state=STATE#wechat_redirect");
        System.out.println("tipListServlet url is "+button32.getUrl());


        ButtonView button33 = new ButtonView();
        button33.setName("新闻发布");
        button33.setType("view");
        button33.setUrl("https://open.weixin.qq.com/connect/oauth2/authorize?appid="+ AppProperties.getValue("AppID")+ "&redirect_uri=" + AppProperties.getValue("baseUrl") + "/tipListServlet&response_type=code&scope=snsapi_userinfo&state=STATE#wechat_redirect");

        ButtonView button34 = new ButtonView();
        button34.setName("办事指南");
        button34.setType("view");
        button34.setUrl("https://mp.weixin.qq.com/s?__biz=MzUzNTU0NjMxMw==&tempkey=OTY3X0J6ZzV5T0kzbEdEemN6SCtEdURJVFZ1cGZMVno1OWlxcXN4YTctMVhzcDYxMWx4Yl9HMmxrRFVHMFFneVRHa1IyNjFjQ2NCc1JrVHNtSU1zTTJNaEV2NWNOZlZ1emN0cld1dndLWXNOcTZxWnByU3hfZXBoZ1F3eDRHMUdfNXI2NVkyNEFlNlVRak5lTHBDX1Fudm92V3M2aXZVajZQUlBWc1hRVEF%2Bfg%3D%3D&chksm=7a8291a54df518b37d1f2bc82ec98d6356fffed17458f27fd089620ced1702bafd83fddbaf9a#rd");

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
