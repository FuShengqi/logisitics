package com.fsq.mappers;

import com.fsq.entity.User;

import java.util.List;

/**
 * Created by FuShengqi on 2017/9/13.
 */
public interface UserMapper {

    User getUserById(int id);

    User getUserByUserName(String username);

    User getUserByUserEmail(String userEmail);

    String getUsernameById(int id);


    void insertUser(User user);

    void updateUser(User user);

    void deleteUserById(int id);

    List<User> getAllUsers();

    Integer count();

}
