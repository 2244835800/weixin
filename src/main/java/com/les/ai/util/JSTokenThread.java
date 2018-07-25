package com.les.ai.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 定时获取微信access_token的线程
 */
public class JSTokenThread implements Runnable {
    private static Logger log = LoggerFactory.getLogger(JSTokenThread.class);
    public static JSAccessToken token = null;

    public void run() {
        while (true) {
            try {
                if (TokenThread.token == null){
                    Thread.sleep(1000);
                    continue;
                }
                token = CommonUtil.getJSToken(TokenThread.token.getToken());
                if (null != token) {
                    if (token.getErrorcode() == 0){
                        log.info("获取js_access_token成功,token:"+token.getJsToken());
                        // 休眠7000秒~~2小时
                        Thread.sleep((token.getExpiresIn() - 200) * 1000);
                    }else {
                        // 如果access_token为null，60秒后再获取
                        Thread.sleep(60 * 1000);
                    }
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