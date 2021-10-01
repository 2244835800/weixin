package com.les.ai.controller;

import com.les.weixin.util.OtherUtil.AppProperties;
import com.les.weixin.util.wechatUtil.MessageUtil;
import com.les.weixin.util.wechatUtil.TextMessageUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Map;


/**
 * @Author:hepo
 * @Version:v1.0
 * @Description:
 * @Date:2018/7/17/017
 * @Time:10:42
 */
@RestController
@RequestMapping("/test")
public class Signature {
private final static Logger log = LoggerFactory.getLogger(Signature.class);
    @Value("${weixin.signature.token}")
    private String TOKEN = AppProperties.getValue("weixin.signature.token");

    /**
     * 微信向我发送一条校验信息，我接受到，并将echostr（回声）返回给微信，接连成功
     * @param signature
     * @param timestamp
     * @param nonce
     * @param echostr
     * @return
     */
    @GetMapping("/hello")
    public String test(@RequestParam("signature") String signature,
                       @RequestParam("timestamp") String timestamp,
                       @RequestParam("nonce") String nonce,
                       @RequestParam("echostr") String echostr) {
        String sortString = sort(TOKEN, timestamp, nonce);
        String myString = sha1(sortString);
        if (myString != null && myString != "" && myString.equals(signature)) {
            log.info("签名校验成功");
            //如果检验成功原样返回echostr，微信服务器接收到此输出，才会确认检验1完成。
            return echostr;
        } else {
            log.info("签名校验失败");
            return "";
        }
    }

    /**
     * 排序
     * @param token
     * @param timestamp
     * @param nonce
     * @return
     */
    public String sort(String token, String timestamp, String nonce) {
        String[] strArray = {token, timestamp, nonce};
        Arrays.sort(strArray);
        StringBuilder sb = new StringBuilder();
        for (String str : strArray)
            sb.append(str);
        return sb.toString();
    }

    /**
     * 加密
     * @param str
     * @return
     */
    public String sha1(String str) {
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-1");
            digest.update(str.getBytes());
            byte messageDigest[] = digest.digest();
            // Create Hex String
            StringBuffer hexString = new StringBuffer();
            // 字节数组转换为 十六进制 数
            for (int i = 0; i < messageDigest.length; i++) {
                String shaHex = Integer.toHexString(messageDigest[i] & 0xFF);
                if (shaHex.length() < 2) {
                    hexString.append(0);
                }
                hexString.append(shaHex);
            }
            return hexString.toString();

        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return "";
    }


    @PostMapping(value = "hello")
    public void dopost(HttpServletRequest request, HttpServletResponse response) {
        response.setCharacterEncoding("utf-8");
        PrintWriter out = null;
        //将微信请求xml转为map格式，获取所需的参数
        Map<String, String> map = MessageUtil.xmlToMap(request);
        String ToUserName = map.get("ToUserName");
        String FromUserName = map.get("FromUserName");
        String MsgType = map.get("MsgType");
        String Content = map.get("Content");

        String message = null;
        //处理文本类型，实现输入1，回复相应的封装的内容。
        if ("text".equals(MsgType)) {
            if ("1".equals(Content)) {
                TextMessageUtil textMessage = new TextMessageUtil();
                message = textMessage.initMessage(FromUserName, ToUserName);
            }
        }
        try {
            out = response.getWriter();
            if (null != message)
                out.write(message);
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        out.close();
    }


    @RequestMapping(value = "/ping")
    public String something() {
        return "pong";
    }

    @GetMapping(value = "/hello2")
    public ModelAndView hello2() {
        ModelAndView mv = new ModelAndView("index");
        return mv;
    }

    @GetMapping(value = "/hello3")
    public ModelAndView hello3() {
        ModelAndView mv = new ModelAndView("index2");
        return mv;
    }


}
