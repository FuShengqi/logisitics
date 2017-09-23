package com.fsq.controller;

import com.alibaba.fastjson.JSON;
import com.fsq.entity.Message;
import com.fsq.service.IMessageService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created by FuShengqi on 2017/9/22.
 */

@Controller
public class MessageController {

    @Resource
    private IMessageService ims;

    /*@RequestMapping(value = "unresponse_message.html", method = RequestMethod.POST)
    public ModelAndView getMessageWithPost(){

        System.out.println("getMessage is running");


        ModelAndView mav = new ModelAndView("unresponse_message");
        List<Message> messages = ims.getAllUnresponseMsg();
        System.out.println("------messages------");
        System.out.println(JSON.toJSONString(messages));
        System.out.println("------messages------");
        mav.addObject("messages", messages);

        System.out.println("getMessage is return");

        return mav;
    }
*/
    @RequestMapping("unresponse_message.html")
    public ModelAndView getMessage(){
        ModelAndView mav = new ModelAndView("unresponse_message");
        List<Message> messages = ims.getAllUnresponseMsg();
        System.out.println("------messages------");
        System.out.println(JSON.toJSONString(messages));
        System.out.println("------messages------");
        mav.addObject("messages", messages);

        System.out.println("getMessage is return");

        return mav;
    }

    @RequestMapping("message_detail.html")
    public ModelAndView getMessageDetail(HttpServletRequest request){
        String uuid = request.getParameter("id");
        Message message = ims.getMessageByUUID(uuid);
        ModelAndView mav = new ModelAndView("message_detail");
        mav.addObject("message", message);
        return mav;
    }

    @RequestMapping(value = "my_message.html", method = RequestMethod.POST)
    public ModelAndView getMyMessage(String userContact,
                             String msgTitle, String msgContent, HttpServletRequest request){
        String userName = null;
        Cookie[] cookies = request.getCookies();
        for(Cookie cookie:cookies){
            if(cookie.getName().equals("userName")){
                userName = cookie.getValue();
                break;
            }
        }

        Message message = new Message();
        String uuid = UUID.randomUUID().toString().replaceAll("-", "");
        message.setUuid(uuid);
        /*SimpleDateFormat sdf = new SimpleDateFormat("yyyy/mm/dd");
        String date = sdf.format(new Date());*/
        message.setMsgDate(new Date());
        message.setUserName(userName);
        message.setUserContact(userContact);
        message.setMsgTitle(msgTitle);
        message.setMsgContent(msgContent);
        message.setMsgStatus(0);

        ims.insertMsg(message);

        List<Message> messages = ims.getMessageByUserName(userName);
        ModelAndView mav = new ModelAndView("my_message");
        mav.addObject("messages", messages);
        return mav;
    }

    @RequestMapping("my_message.html")
    public ModelAndView getMyMessage(HttpServletRequest request){
        String userName = null;
        Cookie[] cookies = request.getCookies();
        for(Cookie cookie:cookies){
            if(cookie.getName().equals("userName")){
                userName = cookie.getValue();
                break;
            }
        }

        List<Message> messages = ims.getMessageByUserName(userName);
        ModelAndView mav = new ModelAndView("my_message");
        System.out.println("------messages------");
        System.out.println(JSON.toJSONString(messages));
        System.out.println("------messages------");
        mav.addObject("messages", messages);
        return mav;
    }

    @RequestMapping("my_message_detail.html")
    public ModelAndView getMyMessageDetail(HttpServletRequest request){
        String uuid = request.getParameter("id");
        Message message = ims.getMessageByUUID(uuid);
        ModelAndView mav = new ModelAndView("my_message_detail");
        mav.addObject("message", message);
        return mav;
    }

    @RequestMapping(value = "response")
    @ResponseBody
    public String response(HttpServletRequest request){
        String responseContent = request.getParameter("responseContent");
        String uuid = request.getParameter("uuid");
        try {
            responseContent = URLDecoder.decode(responseContent, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            System.out.println("解码出错");
        }
        System.out.println(responseContent);
        System.out.println(uuid);
        ims.addResponseByUUID(uuid, responseContent);
        ims.updateMessageStatus(uuid, 1);
        return "success!";
    }

}
