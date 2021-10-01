package com.les.ai.servlet;

import com.les.weixin.entity.UserInfo;
import com.les.weixin.entity.WeixinOauth2Token;
import com.les.weixin.util.OtherUtil.AppProperties;
import com.les.weixin.util.wechatUtil.WeChatUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Author:hepo
 * @Version:v1.0
 * @Description:
 * @Date:2018/7/20/020
 * @Time:14:34
 */

@WebServlet(name = "addTipServlet", urlPatterns = "/addTipServlet")
public class AddTipServlet extends HttpServlet {


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        // 用户同意授权后，能获取到code
        String code = request.getParameter("code");
        String state = request.getParameter("state");
        String url = request.getRequestURL().toString();
        System.out.println("addTip授权：" + code + "-" + state + "-" + url);

        // 用户同意授权
        if ((!"authdeny".equals(code)) && (code != null)) {
            // 获取网页授权access_token
            WeixinOauth2Token weixinOauth2Token = WeChatUtil.getOauth2AccessToken(code);
            // 网页授权接口访问凭证
            String accessToken = weixinOauth2Token.getAccessToken();
            System.out.println("网页授权接口访问凭证accessToken：" + accessToken);
            // 用户标识
            String openId = weixinOauth2Token.getOpenId();
            System.out.println("用户标识：" + openId);
            // 获取用户信息
            UserInfo userInfo = WeChatUtil.getUserInfo(accessToken, openId);

            // 设置要传递的参数
            request.setAttribute("snsUserInfo", userInfo);
            request.setAttribute("state", state);
            request.setAttribute("code", code);
            request.setAttribute("AppID", AppProperties.getValue("AppID"));
            request.setAttribute("baseUrl", AppProperties.getValue("baseUrl"));
        }
        // 跳转到addTip.jsp
        request.getRequestDispatcher("addTip.jsp").forward(request, response);
    }
}

