package com.les.ai.controller;

import com.les.ai.util.AppProperties;
import com.les.ai.util.CommonUtil;
import com.les.ai.util.JSTokenThread;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import java.util.Map;


@RequestMapping("/getTicket")
@Controller
public class WeiXinGetTicket {

    private static String apiTicket;

    private static String signature;

    @RequestMapping("getSign")
    @ResponseBody
    public JSONObject getSign(@RequestParam Map<String, String> params){
        System.out.println("进入获取signature界面");
        String code = params.get("code");
        String state = params.get("state");
//        String nonceStr = params.get("noncestr");
//        String timestamp = params.get("timestamp");
//        String pageUrl = params.get("pageurl");
//        AccessToken accessToken = WeixinUtil.getAccessToken();
//        String ticketRequestUrl = "https://api.weixin.qq.com/cgi-bin/ticket/getticket?access_token=" + accessToken.getToken() +"&type=jsapi";
//        JSONObject apiTicketObject = WeixinUtil.httpRequest(ticketRequestUrl, "GET", null);
//        WeiXinGetTicket.apiTicket = JSTokenThread.token.getJsToken();
//        WeiXinGetTicket.signature = "jsapi_ticket=" + WeiXinGetTicket.apiTicket + "&noncestr=" + nonceStr +"&timestamp=" + timestamp +"&url=" + pageUrl;
//        String encodeSign = Sha1Encode.encode(WeiXinGetTicket.signature);
//        System.out.println("encodeSign:"+encodeSign);


//        System.out.println("jsToken:"+JSTokenThread.token.getJsToken());
//        System.out.println("pageUrl:"+"http://lzzhcg.com/weixin/testAdd.jsp");
//        String signature = CommonUtil.sign2(JSTokenThread.token.getJsToken(),"http://lzzhcg.com/weixin/testAdd.jsp").get("signature");

        JSONObject resultObject = new JSONObject();
        String nonceStr = CommonUtil.create_nonce_str();
        String timestamp = CommonUtil.create_timestamp();
        JSTokenThread.token.getJsToken();
        String signature = CommonUtil.sign2(JSTokenThread.token.getJsToken(),
                nonceStr,
                timestamp,
                AppProperties.getValue("baseUrl")+"/addTipServlet?code="+code+"&state="+state);
        resultObject.put("nonceStr", nonceStr);
        resultObject.put("timestamp", timestamp);
        resultObject.put("signature", signature);
        System.out.println("signature:"+signature);
        return resultObject;
    }

}
