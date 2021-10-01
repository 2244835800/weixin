package com.les.ai.util;

import com.les.weixin.entity.AccessToken;
import com.les.weixin.util.OtherUtil.AppProperties;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 定时获取微信access_token的线程
 */
public class TokenThread implements Runnable {
    private static Logger log = LoggerFactory.getLogger(TokenThread.class);
    // 第三方用户唯一凭证
    public static String appid = AppProperties.getValue("AppID");
    // 第三方用户唯一凭证密钥
    public static String appsecret = AppProperties.getValue("AppSecret");
    public static AccessToken token = null;

    public void run() {
        while (true) {
            try {
                token = CommonUtil.getToken(appid, appsecret);
                if (null != token) {
                    log.info("获取access_token成功，有效时长{}秒 token:{}", token.getExpiresIn(), token.getToken());
                    // 休眠7000秒~~2小时
                    Thread.sleep((token.getExpiresIn() - 200) * 1000);
                } else {
                    // 如果access_token为null，60秒后再获取
                    Thread.sleep(60 * 1000);
                }
            } catch (InterruptedException e) {
                try {
                    Thread.sleep(60 * 1000);
                } catch (InterruptedException e1) {
                    log.error("{}", e1);
                }
                log.error("{}", e);
            }
        }
    }
}
