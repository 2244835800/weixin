package com.les.ai.dao;



import com.les.ai.entity.AdminTipPicture;

import java.util.List;

public interface AdminTipImg {

	 void addPicture(AdminTipPicture picture);
	 List<AdminTipPicture> selectListByTipId(String tipId);
}
