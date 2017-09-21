package com.fsq.entity;

/**
 * Created by FuShengqi on 2017/9/13.
 */
public class User {

    private int id;

    private String userUUID;

    private String userName;

    private String userPassword;

    private String userEmail;

    private int userIncome;

    private int userOutcome;

    /*如果显示声明了带参的构造函数，则还要声明显示声明无参的默认构造函数*/

    public User() {
    }

    public User(String userName, String userPassword, String userEmail, int userIncome, int userOutcome) {
        this.userName = userName;
        this.userPassword = userPassword;
        this.userEmail = userEmail;
        this.userIncome = userIncome;
        this.userOutcome = userOutcome;
    }

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

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public int getUserIncome() {
        return userIncome;
    }

    public void setUserIncome(int userIncome) {
        this.userIncome = userIncome;
    }

    public int getuserOutcome() {
        return userOutcome;
    }

    public void setuserOutcome(int userOutcome) {
        this.userOutcome = userOutcome;
    }

    public String getuserUUID() {
        return userUUID;
    }

    public void setuserUUID(String userUUID) {
        this.userUUID = userUUID;
    }

}
