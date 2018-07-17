//package com.les.weixin.controller;
//
//import com.les.weixin.entity.UserEntity;
//import com.les.weixin.enums.UserSexEnum;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.test.context.SpringBootTest;
//import org.springframework.util.Assert;
//
//import java.util.List;
//
///**
// * @Author:hepo
// * @Version:v1.0
// * @Description:
// * @Date:2018/7/17/017
// * @Time:17:021
// */
//@RunWith(SpringRunner.class)
//@SpringBootTest
//public class UserMapperTest {
//
//    @Autowired
//    private UserMapper UserMapper;
//
//    @Test
//    public void testInsert() throws Exception {
//        UserMapper.insert(new UserEntity("aa", "a123456", UserSexEnum.MAN));
//        UserMapper.insert(new UserEntity("bb", "b123456", UserSexEnum.WOMAN));
//        UserMapper.insert(new UserEntity("cc", "b123456", UserSexEnum.WOMAN));
//
//        Assert.assertEquals(3, UserMapper.getAll().size());
//    }
//
//    @Test
//    public void testQuery() throws Exception {
//        List<UserEntity> users = UserMapper.getAll();
//        System.out.println(users.toString());
//    }
//
//    @Test
//    public void testUpdate() throws Exception {
//        UserEntity user = UserMapper.getOne(3l);
//        System.out.println(user.toString());
//        user.setNickName("neo");
//        UserMapper.update(user);
//        Assert.assertTrue(("neo".equals(UserMapper.getOne(3l).getNickName())));
//    }
//}
