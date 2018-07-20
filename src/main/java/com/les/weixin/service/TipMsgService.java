package com.les.weixin.service;



import com.les.weixin.entity.AdminTipMsg;

import java.util.Map;

public interface TipMsgService {

	
	
	Map<String, Object> selectList(int pageNow);
	Map<String, Object> selectListByAccountId(int pageNow, String accountId);
	Map<String, Object> selectByTipId(String tipId);
	void addTipMsg(AdminTipMsg tipmsg, String pic);

	void addTipMsg(AdminTipMsg tipMsg);
}
