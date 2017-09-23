package com.fsq.service;

import com.fsq.entity.Message;
import com.fsq.mappers.MessageMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by FuShengqi on 2017/9/22.
 */

@Service
public class MessageService implements IMessageService {

    @Resource
    private MessageMapper messageMapper;

    public void insertMsg(Message msg) {
        messageMapper.insertMsg(msg);
    }

    public List<Message> getAllResponseMsg() {
        return messageMapper.getAllResponseMsg();
    }

    public List<Message> getAllUnresponseMsg() {
        return messageMapper.getAllUnresponseMsg();
    }

    public List<Message> getAllUnresponseMegByUserName(String userName) {
        return messageMapper.getAllUnresponseMegByUserName(userName);
    }

    public List<Message> getAllResponseMsgByUserName(String userName) {
        return messageMapper.getAllResponseMsgByUserName(userName);
    }

    public List<Message> getMessageByUserName(String userName) {
        return messageMapper.getMessageByUserName(userName);
    }

    public Message getMessageByUUID(String uuid) {
        return messageMapper.getMessageByUUID(uuid);
    }

    public void addResponseByUUID(String uuid, String response) {
        messageMapper.addResponseByUUID(uuid, response);
    }

    public void updateMessageStatus(String uuid, int status) {
        messageMapper.updateMessageStatus(uuid, status);
    }
}
