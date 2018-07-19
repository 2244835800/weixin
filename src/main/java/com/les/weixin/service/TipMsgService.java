package com.les.weixin.service;



import com.les.weixin.entity.AdminTipMsg;

import java.util.Map;

public interface TipMsgService {

	
	
	public Map<String, Object> selectList(int pageNow);
	public Map<String, Object> selectListByAccountId(int pageNow, String accountId);
	public Map<String, Object> selectByTipId(String tipId);
	public void addTipMsg(AdminTipMsg tipmsg, String pic);
}
