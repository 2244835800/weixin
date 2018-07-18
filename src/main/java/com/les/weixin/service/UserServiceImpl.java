package com.les.weixin.service;

/**
 * @Author:hepo
 * @Version:v1.0
 * @Description:
 * @Date:2018/7/18
 * @Time:0:06
 */

import com.les.weixin.dao.UserDao;
import com.les.weixin.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;


    public User getUserById(int userId) {
        return userDao.selectByPrimaryKey(userId);
    }

    public boolean addUser(User record){
        boolean result = false;
        try {
            userDao.insertSelective(record);
            result = true;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

    @Override
    public List<User> selectAll() {
        return userDao.selectAll();
    }

}
