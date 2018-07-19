package com.les.weixin.dao;

import com.les.weixin.entity.AdminTipMsg;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AdminTipMsgDao {


    public void addTipMsg(AdminTipMsg adminTipMsg);

    public int selectCount();

    public int selectCountByAccountId(String accountId);

    public List<AdminTipMsg> selectList(
            @Param(value = "startPos") Integer startPos,
            @Param(value = "pageSize") Integer pageSize);

    public List<AdminTipMsg> selectListByAccountId(
            @Param(value = "startPos") Integer startPos,
            @Param(value = "pageSize") Integer pageSize,
            @Param(value = "accountId") String accountId);

    public AdminTipMsg selectById(String tipMsgId);

    public List<AdminTipMsg> selectByOpenId();

    public List<AdminTipMsg> selectListByWeixinId(String comm);
}
