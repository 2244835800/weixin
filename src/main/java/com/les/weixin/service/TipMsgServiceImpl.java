package com.les.weixin.service;

import com.les.weixin.dao.AdminTip;
import com.les.weixin.dao.AdminTipImg;
import com.les.weixin.dao.AdminTipMsgDao;
import com.les.weixin.entity.AdminTipMsg;
import com.les.weixin.entity.AdminTipPicture;
import com.les.weixin.entity.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class TipMsgServiceImpl implements TipMsgService{


	@Autowired
	private AdminTip admintipmsgDao;
	@Autowired
	private AdminTipImg admintippictureDao;
	@Override
	public Map<String, Object> selectList(int pageNow) {
		Map<String, Object> map=new HashMap<String, Object>();
		Page page = null;
  		 int totalCount=admintipmsgDao.selectCount();
  		 if(totalCount==0){
  			 totalCount=1;
  		 }
  		 List<AdminTipMsg> list=new ArrayList<AdminTipMsg>();
   		 if(pageNow!=0){
   			 page = new Page(totalCount, pageNow);
   			 list=admintipmsgDao.selectList(page.getStartPos(), page.getPageSize());
   		 }else{
   			 page = new Page(totalCount, 1);
   			 list=admintipmsgDao.selectList(page.getStartPos(), page.getPageSize());
   		 }
   		map.put("list", list);
		map.put("page", page);
		return map;
	}
	/**
	 * 添加举报
	 */
	@Override
	public void addTipMsg(AdminTipMsg tipMsg, String pic) {
		admintipmsgDao.addTipMsg(tipMsg);
		if(pic!=null&&!pic.equals("")){
			String[] p=pic.split(";");
			for(int i=0;i<p.length;i++){
				AdminTipPicture picture=new AdminTipPicture();
				picture.setStrTipId(tipMsg.getStrTipId());
				picture.setStrTipPicUrl(p[i]);
				admintippictureDao.addPicture(picture);
			}
		}

	}

	@Override
	public void addTipMsg(AdminTipMsg tipMsg) {
		admintipmsgDao.addTipMsg(tipMsg);
	}

	/**
	 * app举报列表
	 */
	@Override
	public Map<String, Object> selectListByAccountId(int pageNow, String accountId) {
		// TODO Auto-generated method stub
		Map<String, Object> map=new HashMap<String, Object>();
		Page page = null;
  		 int totalCount=admintipmsgDao.selectCountByAccountId(accountId);
  		 if(totalCount==0){
  			 totalCount=1;
  		 }
  		 List<AdminTipMsg> list=new ArrayList<AdminTipMsg>();
   		 if(pageNow!=0){
   			 page = new Page(totalCount, pageNow);
   			 list=admintipmsgDao.selectListByAccountId(page.getStartPos(), page.getPageSize(),accountId);
   		 }else{
   			 page = new Page(totalCount, 1);
   			 list=admintipmsgDao.selectListByAccountId(page.getStartPos(), page.getPageSize(),accountId);
   		 }
   		map.put("list", list);
		map.put("page", page);
		return map;

	}
	//举报详情
	@Override
	public Map<String, Object> selectByTipId(String tipId) {
		Map<String, Object> map=new HashMap<String, Object>();
		AdminTipMsg tipMsg=admintipmsgDao.selectById(tipId);
		List<AdminTipPicture> PicList=admintippictureDao.selectListByTipId(tipId);
		map.put("tipMsg", tipMsg);
		map.put("PicList", PicList);
		return map;
	}
}
