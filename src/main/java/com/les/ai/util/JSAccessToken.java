package com.les.ai.util;

public class JSAccessToken {
	 // 获取到的凭证
    private String jsToken;
    // 凭证有效时间，单位：秒
    private int expiresIn;
    private int errorcode;
    private String errorMsg;

    public String getJsToken() {
        return jsToken;
    }

    public void setJsToken(String jsToken) {
        this.jsToken = jsToken;
    }

    public int getExpiresIn() {
        return expiresIn;
    }

    public void setExpiresIn(int expiresIn) {
        this.expiresIn = expiresIn;
    }

    public int getErrorcode() {
        return errorcode;
    }

    public void setErrorcode(int errorcode) {
        this.errorcode = errorcode;
    }

    public String getErrorMsg() {
        return errorMsg;
    }

    public void setErrorMsg(String errorMsg) {
        this.errorMsg = errorMsg;
    }
    //    "errcode":0,
//            "errmsg":"ok",
//            "ticket":"bxLdikRXVbTPdHSM05e5u5sUoXNKd8-41ZO3MhKoyN5OfkWITDGgnr2fwJ0m9E8NYzWKVZvdVtaUgWvsdshFKA",
//            "expires_in":7200

}
