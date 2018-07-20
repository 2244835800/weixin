package com.les.weixin.dao;

import com.les.weixin.entity.AdminTipMsg;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Author:hepo
 * @Version:v1.0
 * @Description:
 * @Date:2018/7/20/020
 * @Time:9:46
 */
public interface AdminTip {
    List selectAll();

    void addTipMsg(AdminTipMsg adminTipMsg);

    int selectCount();

    int selectCountByAccountId(String accountId);

    List<AdminTipMsg> selectList(
            @Param(value = "startPos") Integer startPos,
            @Param(value = "pageSize") Integer pageSize);

    List<AdminTipMsg> selectListByAccountId(
            @Param(value = "startPos") Integer startPos,
            @Param(value = "pageSize") Integer pageSize,
            @Param(value = "accountId") String accountId);

    AdminTipMsg selectById(String tipMsgId);

    List<AdminTipMsg> selectByOpenId();

    List<AdminTipMsg> selectListByWeixinId(String comm);
}
