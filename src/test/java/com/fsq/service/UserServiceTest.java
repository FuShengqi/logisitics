package com.fsq.service;

import com.alibaba.fastjson.JSON;
import com.fsq.entity.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by FuShengqi on 2017/9/14.
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
public class UserServiceTest {

    @Resource
    private IUserService ius;

    @Test
    public void insertTest(){
        User user = new User("xiaoming", "000000", "example@domain.com", 100, 200);
        ius.insertUser(user);

        show();
    }

    @Test
    public void getUserByUserNameTest(){
        User user = ius.getUserByUserName("xiaoming");
        System.out.println(JSON.toJSONString(user));
    }

    @Test
    public void deleteUserByIdTest(){
        ius.deleteUserById(1);

        show();
    }

    @Test
    public void updateUserTest(){
        User user = ius.getUserById(3);
        user.setUserName("zhangsan");
        ius.updateUser(user);

        show();
    }

    @Test
    public void countTest(){
        Integer nums = ius.count();
        System.out.println(nums.toString());
    }

    public void show(){
        List<User> users = ius.getAllUsers();
        System.out.println(JSON.toJSONString(users));
    }

}
