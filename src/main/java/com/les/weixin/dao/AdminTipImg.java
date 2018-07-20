package com.les.weixin.dao;



import com.les.weixin.entity.AdminTipPicture;

import java.util.List;

public interface AdminTipImg {

	 void addPicture(com.les.weixin.entity.AdminTipPicture picture);
	 List<AdminTipPicture> selectListByTipId(String tipId);
}
