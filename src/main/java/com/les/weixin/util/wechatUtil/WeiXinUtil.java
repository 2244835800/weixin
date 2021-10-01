package com.les.weixin.util.wechatUtil;
import com.les.weixin.entity.AccessToken;
import net.sf.json.JSONObject;
import org.apache.http.HttpEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;

/**
 * @Author:hepo yuanjun
 * @Version:v1.0
 * @Description:
 * @Date:2018/7/18/018
 * @Time:11:20
 */

public class WeiXinUtil {
    private final static Logger log = LoggerFactory.getLogger(WeiXinUtil.class);
    //开发者id
    private static final String APPID = "wxae889c7ca189c53d";
    //开发者秘钥
    private static final String APPSECRET="3e2c39fe75f27af874c3616bcf3daf72";
    private static final String ACCESS_TOKEN_URL = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=APPID&secret=APPSECRET";

    /**
     * 从接口中获取token
     * @return
     */
    public static AccessToken getAccessToken(){
        log.info("从接口中获取");
//        RedisProperties.Jedis jedis  = RedisUtil.getJedis();
        AccessToken token = new AccessToken();
        String url = ACCESS_TOKEN_URL.replace("APPID", APPID).replace("APPSECRET", APPSECRET);
        JSONObject json = doGetstr(url);
        if(json!=null){
            token.setToken(json.getString("access_token"));
            token.setExpiresIn(json.getInt("expires_in"));
//            jedis.set("access_token", json.getString("access_token"));
//            jedis.expire("access_token", 60*60*2);
        }
//        RedisUtil.returnResource(jedis);
        return token;
    }
    /**
     * 获取凭证
     * @return
     */
//    public static String  getAccess_Token(){
//        System.out.println("从缓存中读取");
//        Jedis jedis  = RedisUtil.getJedis();
//        String access_token = jedis.get("access_token");
//        if(access_token==null){
//            AccessToken token = getAccessToken();
//            access_token = token.getToken();
//        }
//        RedisUtil.returnResource(jedis);
//        return access_token;
//    }
    /**
     * 处理doget请求
     * @param url
     * @return
     */
    public static JSONObject doGetstr(String url){
        CloseableHttpClient httpclient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet(url);
        JSONObject jsonObject = null;
        try {
            CloseableHttpResponse response = httpclient.execute(httpGet);
            HttpEntity entity = response.getEntity();
            if(entity!=null){
                String result = EntityUtils.toString(entity);
                jsonObject = JSONObject.fromObject(result);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return jsonObject;
    }
    /**
     * 处理post请求
     * @param url
     * @return
     */
    public static JSONObject doPoststr(String url,String outStr){
        CloseableHttpClient httpclient = HttpClients.createDefault();
        HttpPost httpPost = new HttpPost(url);
        JSONObject jsonObject = null;
        try {
            httpPost.setEntity(new StringEntity(outStr, "utf-8"));
            CloseableHttpResponse response = httpclient.execute(httpPost);
            String result = EntityUtils.toString(response.getEntity(),"utf-8");
            jsonObject =JSONObject.fromObject(result);
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return jsonObject;
    }

}

