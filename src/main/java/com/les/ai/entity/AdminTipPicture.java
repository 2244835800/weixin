package com.les.ai.entity;

import java.io.Serializable;

public class AdminTipPicture implements Serializable{

	private String strPictureId;
	private String strTipId;
	private String strTipPicUrl;
	private String comments;
	
	public String getStrPictureId() {
		return strPictureId;
	}
	public void setStrPictureId(String strPictureId) {
		this.strPictureId = strPictureId;
	}
	public String getStrTipId() {
		return strTipId;
	}
	public void setStrTipId(String strTipId) {
		this.strTipId = strTipId;
	}
	public String getStrTipPicUrl() {
		return strTipPicUrl;
	}
	public void setStrTipPicUrl(String strTipPicUrl) {
		this.strTipPicUrl = strTipPicUrl;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	
}
