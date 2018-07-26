package com.les.ai.service;

/**
 * @Author:hepo
 * @Version:v1.0
 * @Description:
 * @Date:2018/7/18
 * @Time:0:06
 */
import com.les.ai.entity.User;

import java.util.List;


public interface UserService {
    public User getUserById(int userId);

    boolean addUser(User record);

    List<User> selectAll();
}