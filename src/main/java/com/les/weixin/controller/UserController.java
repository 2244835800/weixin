package com.les.weixin.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.les.weixin.entity.User;
import com.les.weixin.service.UserService;
import com.les.weixin.util.pagination.PageBootGrid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @Author:hepo
 * @Version:v1.0
 * @Description:
 * @Date:2018/7/18
 * @Time:0:07
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;


    @RequestMapping("/showUser")
    @ResponseBody
    public User toIndex(HttpServletRequest request, Model model) {
        int userId = Integer.parseInt(request.getParameter("id"));
        User user = this.userService.getUserById(userId);
        return user;
    }

    @RequestMapping("/hello4")
    @ResponseBody
    public String findUserPageFromMybatis(HttpServletRequest request, Integer current, Integer rowCount) {
        current = current == null ? 1 : current;
        rowCount = rowCount == null ? 10 : rowCount;
        PageHelper.startPage(current, rowCount);
        List<User> list = this.userService.selectAll();
        PageInfo pageInfo = new PageInfo(list);
        Page page = (Page) list;
        return new PageBootGrid().queryForDataSet(pageInfo);
//        return "PageInfo: " + JSON.toJSONString(pageInfo) + ", Page: " + JSON.toJSONString(page);
    }


}