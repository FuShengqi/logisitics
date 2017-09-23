package com.fsq.entity;

import java.util.Date;

/**
 * Created by FuShengqi on 2017/9/13.
 */
public class Message {

    private int id;

    private String uuid;

    private String userName;

    private String userContact;

    private Date msgDate;

    private String msgTitle;

    private String msgContent;

    private int msgStatus;

    private String msgResponse;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Date getMsgDate() {
        return msgDate;
    }

    public void setMsgDate(Date msgDate) {
        this.msgDate = msgDate;
    }

    public String getMsgTitle() {
        return msgTitle;
    }

    public void setMsgTitle(String msgTitle) {
        this.msgTitle = msgTitle;
    }

    public String getMsgContent() {
        return msgContent;
    }

    public void setMsgContent(String msgContent) {
        this.msgContent = msgContent;
    }

    public int getMsgStatus() {
        return msgStatus;
    }

    public void setMsgStatus(int msgStatus) {
        this.msgStatus = msgStatus;
    }

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public String getUserContact() {
        return userContact;
    }

    public void setUserContact(String userContact) {
        this.userContact = userContact;
    }

    public String getMsgResponse() {
        return msgResponse;
    }

    public void setMsgResponse(String msgResponse) {
        this.msgResponse = msgResponse;
    }
}
