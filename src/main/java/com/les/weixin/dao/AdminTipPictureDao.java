package com.les.weixin.dao;


import com.les.weixin.entity.AdminTipPicture;

import java.util.List;

public interface AdminTipPictureDao {

	public void addPicture(AdminTipPicture picture);
	public List<AdminTipPicture> selectListByTipId(String tipId);
}
