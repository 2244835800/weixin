package com.les.weixin.entity;

import java.io.Serializable;

public class AdminTipMsg implements Serializable {
    private String strTipId;//举报信息id
    private String strPersonName;//姓名
    private String strPersonTelphone;//电话
    private String strTipTitle;//举报标题
    private String strTipDescription;//举报描述
    private String strPic1;//
    private String strPic2;
    private String strTipState;//举报状态：0为未处理；1为已受理；2为处理中；3为处理完成
    private String strTipSource;//举报来源：1微信；2APP；3网页
    private String strTipType;//举报类型
    private String comments;//备注1
    private String openid;
    private String createtime;//举报时间
    private String districtId;//所属区域编码
    private String x;//精度long
    private String y;//维度la

    @Override
    public String toString() {
        return "strTipId:"+strTipId+
                "strPersonName:"+strPersonName+
                "strPersonTelphone:"+strPersonTelphone+
                "strTipTitle:"+strTipTitle+
                "strTipDescription:"+strTipDescription+
                "strPic1:"+strPic1+
                "strPic2:"+strPic2+
                "strTipState:"+strTipState+
                "strTipSource:"+strTipSource+
                "strTipType:"+strTipType+
                "comments:"+comments+
                "openid:"+openid+
                "createtime:"+createtime+
                "districtId:"+districtId+
                "x:"+x+
                "y:"+y;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    public String getX() {
        return x;
    }

    public void setX(String x) {
        this.x = x;
    }

    public String getY() {
        return y;
    }

    public void setY(String y) {
        this.y = y;
    }

    public String getStrTipId() {
        return strTipId;
    }

    public void setStrTipId(String strTipId) {
        this.strTipId = strTipId;
    }

    public String getStrPersonName() {
        return strPersonName;
    }

    public void setStrPersonName(String strPersonName) {
        this.strPersonName = strPersonName;
    }

    public String getStrPersonTelphone() {
        return strPersonTelphone;
    }

    public void setStrPersonTelphone(String strPersonTelphone) {
        this.strPersonTelphone = strPersonTelphone;
    }

    public String getStrTipTitle() {
        return strTipTitle;
    }

    public void setStrTipTitle(String strTipTitle) {
        this.strTipTitle = strTipTitle;
    }

    public String getStrTipDescription() {
        return strTipDescription;
    }

    public void setStrTipDescription(String strTipDescription) {
        this.strTipDescription = strTipDescription;
    }

    public String getStrTipState() {
        return strTipState;
    }

    public void setStrTipState(String strTipState) {
        this.strTipState = strTipState;
    }

    public String getStrTipSource() {
        return strTipSource;
    }

    public void setStrTipSource(String strTipSource) {
        this.strTipSource = strTipSource;
    }

    public String getStrTipType() {
        return strTipType;
    }

    public void setStrTipType(String strTipType) {
        this.strTipType = strTipType;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public String getOpenid() {
        return openid;
    }

    public void setOpenid(String openid) {
        this.openid = openid;
    }

    public String getCommitTime() {
        return createtime.split("[.]")[0];
    }

    public void setCommitTime(String commitTime) {
        this.createtime = commitTime;
    }


    public String getDistrictId() {
        return districtId;
    }

    public void setDistrictId(String districtId) {
        this.districtId = districtId;
    }

    public String getStrPic1() {
        return strPic1;
    }

    public void setStrPic1(String strPic1) {
        this.strPic1 = strPic1;
    }

    public String getStrPic2() {
        return strPic2;
    }

    public void setStrPic2(String strPic2) {
        this.strPic2 = strPic2;
    }
}
