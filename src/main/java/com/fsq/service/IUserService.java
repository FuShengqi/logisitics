package com.fsq.service;

import com.fsq.entity.User;

import java.util.List;

/**
 * Created by FuShengqi on 2017/9/14.
 */
public interface IUserService {

    User getUserById(int id);

    User getUserByUserName(String userName);

    User getUserByUserEmail(String userEmail);

    String getUsernameById(int id);

    void insertUser(User user);

    void updateUser(User user);

    void deleteUserById(int id);

    List<User> getAllUsers();

    Integer count();


}
