package com.les.ai.servlet;

import com.les.ai.dao.AdminTip;
import com.les.ai.entity.AdminTipMsg;
import com.les.weixin.entity.UserInfo;
import com.les.weixin.entity.WeixinOauth2Token;
import com.les.weixin.util.wechatUtil.WeChatUtil;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "tipListServlet", urlPatterns = "/tipListServlet")
public class TipListServlet extends HttpServlet {

    @Autowired
    private AdminTip adminTipMsgDao;

//    public void init() throws ServletException {
//        super.init();
//        ServletContext servletContext = this.getServletContext();
//        WebApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(servletContext);
//        adminTipMsgDao = (AdminTip) ctx.getBean("adminTipMsgDao");
//    }


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        // 用户同意授权后，能获取到code
        String code = request.getParameter("code");
        String state = request.getParameter("state");
        System.out.println("tipList授权：" + code + "-" + state);
//         用户同意授权
        if (!"authdeny".equals(code)) {
            // 获取网页授权access_token
            WeixinOauth2Token weixinOauth2Token = WeChatUtil.getOauth2AccessToken(code);
            // 网页授权接口访问凭证
            String accessToken = weixinOauth2Token.getAccessToken();
            // 用户标识
            String openId = weixinOauth2Token.getOpenId();
            System.out.println("tipList：openId:" + openId);
            // 获取用户信息
            UserInfo userInfo = WeChatUtil.getUserInfo(accessToken, openId);

            List<AdminTipMsg> tiplist = adminTipMsgDao.selectListByWeixinId(userInfo.getOpenId());
            System.out.println("tipListCount：" + tiplist.size());
//            System.out.println("tipListUser："+userInfo.toString());

            request.setAttribute("list", tiplist);
            // 设置要传递的参数
            request.setAttribute("snsUserInfo", userInfo);
            request.setAttribute("state", state);
        }
        // 跳转到tipList.jsp
        request.getRequestDispatcher("tipList.jsp").forward(request, response);

//        List<AdminTipMsg> tiplist=adminTipMsgDao.selectByOpenId();
//
//        request.setAttribute("list", tiplist);
//
//        request.getRequestDispatcher("tipList.jsp").forward(request, response);
    }
}

