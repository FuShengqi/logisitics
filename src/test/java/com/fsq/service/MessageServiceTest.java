package com.fsq.service;

import com.alibaba.fastjson.JSON;
import com.fsq.entity.Message;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by FuShengqi on 2017/9/22.
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
public class MessageServiceTest {

    @Resource
    private IMessageService ims;

    @Test
    public void insertTest(){
        Message message = new Message();
        message.setMsgDate(new Date());
        message.setUserName("小明");
        message.setUserContact("010-123456");
        message.setMsgTitle("this is message title");
        message.setMsgContent("this is message content");
        message.setMsgStatus(0);

        ims.insertMsg(message);
    }

    @Test
    public void getMessageTest(){
        List<Message> messages = ims.getAllUnresponseMsg();
        System.out.println(JSON.toJSONString(messages));
    }

    @Test
    public void getMessageByUserNameTest(){
        /*List<Message> messages = ims.getAllUnresponseMegByUserName("小明");
        System.out.println(JSON.toJSONString(messages));*/

        List<Message> messages = ims.getMessageByUserName("xiaoming");
        System.out.println(JSON.toJSONString(messages));
    }


    @Test
    public void updateResponseByUUIDTest(){
        String responseContent = "这是测试的回复内容";
        String uuid = "3797af9f14e64c4eab23bddc60ad1ddf";
        ims.addResponseByUUID(uuid, responseContent);
        List<Message> messages = ims.getMessageByUserName("xiaoming");
        System.out.println(JSON.toJSONString(messages));
    }


}
