package com.les.weixin.dao;

/**
 * @Author:hepo
 * @Version:v1.0
 * @Description:
 * @Date:2018/7/18
 * @Time:0:02
 */

import com.les.weixin.entity.User;

import java.util.List;

public interface UserDao {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    List<User> selectAll();
}
