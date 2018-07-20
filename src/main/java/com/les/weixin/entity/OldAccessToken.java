package com.les.weixin.entity;

/**
 * @Author:hepo
 * @Version:v1.0
 * @Description:原来项目中的AccessToken
 * @Date:2018/7/20/020
 * @Time:14:39
 */
public class OldAccessToken {
    // 获取到的凭证
    private String token;
    // 凭证有效时间，单位：秒
    private int expiresIn;

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public int getExpiresIn() {
        return expiresIn;
    }

    public void setExpiresIn(int expiresIn) {
        this.expiresIn = expiresIn;
    }
}
