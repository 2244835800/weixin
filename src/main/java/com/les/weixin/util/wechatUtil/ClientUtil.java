package com.les.weixin.util.wechatUtil;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedHashMap;
import java.util.Map;


public class ClientUtil {
	private final static Logger log = LoggerFactory.getLogger(ClientUtil.class);
	/**
	 * 封装JSON数据
	 * @param obj 数据
	 * @param flag 成功失败标识 0:失败 1:成功
	 * @return
	 */
	public String getMsgArrayJson(Object obj, boolean flag) {
		Map<String, Object> map = new LinkedHashMap<String, Object>();
		map.put("rec", flag == true ? "SUC" : "FAL");
		//Map<String, Object> returnData = new LinkedHashMap<String, Object>();
		if(!flag){
			map.put("body", obj.toString());
			//returnData.put("error", obj.toString());
		}else{
			try {
				map.put("body", JSONArray.fromObject(obj));
				//returnData.put("success", JSONArray.fromObject(obj));
			} catch (Exception e) {
				map.put("body", obj);
				//returnData.put("success", obj);
			}

		}
		JSONObject jsonObjectFromMap = JSONObject.fromObject(map);
		return jsonObjectFromMap.toString();
	}

	/**
	 * 返回数据到客户端
	 * @param response
	 * @param jsonData
	 */
	public void flashDataToClient(HttpServletResponse response, String jsonData){
		PrintWriter out = null;
		try {
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/json; charset=utf-8");
			out = response.getWriter();
			out.print(jsonData);
			out.flush();
		} catch (IOException e) {
			e.printStackTrace();
		} finally{
			if(out != null){
				out.close();
			}
			out = null;
		}
	}
	public static void main(String[] args) {
		String accessToken = WeiXinUtil.getAccessToken().getToken();
		String menu = MenuUtil.initMenu();
		log.info(menu);
		int result = MenuUtil.createMenu(accessToken, menu);
		if (result == 0)
			log.info("菜单创建成功");
		else
			log.error("错误码" + result);
	}

}
