package com.fsq.service;

import com.fsq.entity.Message;
import com.fsq.mappers.MessageMapper;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by FuShengqi on 2017/9/22.
 */
public interface IMessageService {

    void insertMsg(Message msg);

    List<Message> getAllResponseMsg();

    List<Message> getAllUnresponseMsg();

    List<Message> getAllUnresponseMegByUserName(String userName);

    List<Message> getAllResponseMsgByUserName(String userName);

    List<Message> getMessageByUserName(String userName);

    Message getMessageByUUID(String uuid);

    void addResponseByUUID(String uuid, String response);

    void updateMessageStatus(String uuid, int status);
}
