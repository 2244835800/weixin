package com.les.weixin.util;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedHashMap;
import java.util.Map;


public class ClientUtil {

	
	
	
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
		String accessToken  = WeiXinUtil.getAccessToken().getAccess_token();
		String menu = MenuUtil.initMenu();
		System.out.println(menu);
		int result = MenuUtil.createMenu(accessToken,menu);
		if(result==0){
			System.out.println("菜单创建成功");
		}else{
			System.out.println("错误码"+result);
		}
	}










}
