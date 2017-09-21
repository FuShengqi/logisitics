package com.fsq.service;

import com.fsq.entity.User;
import com.fsq.mappers.UserMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by FuShengqi on 2017/9/14.
 */

@Service
public class UserServiceImpl implements IUserService {

    @Resource
    private UserMapper userMapper;

    public User getUserById(int id) {
        return userMapper.getUserById(id);
    }

    public User getUserByUserName(String userName) {
        return userMapper.getUserByUserName(userName);
    }

    public User getUserByUserEmail(String userEmail){
        return userMapper.getUserByUserEmail(userEmail);
    }

    public String getUsernameById(int id) {
        return userMapper.getUsernameById(id);
    }

    public void insertUser(User user) {
        userMapper.insertUser(user);
    }

    public void updateUser(User user) {
        userMapper.updateUser(user);
    }

    public void deleteUserById(int id) {
        userMapper.deleteUserById(id);
    }

    public List<User> getAllUsers() {
        return userMapper.getAllUsers();
    }

    public Integer count() {
        return userMapper.count();
    }

}
