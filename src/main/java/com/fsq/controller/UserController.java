package com.fsq.controller;

import com.alibaba.fastjson.JSON;
import com.fsq.entity.User;
import com.fsq.service.IUserService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.UUID;

/**
 * Created by FuShengqi on 2017/9/14.
 */

@Controller
public class UserController {

    @Autowired
    private IUserService ius;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView index(HttpServletRequest request){
        User user = new User();
        ModelAndView mav = new ModelAndView("index");
        Cookie[] cookies = request.getCookies();
        if(cookies != null){
            for(Cookie cookie:cookies){
                if(cookie.getName().equals("userName")){
                    user = ius.getUserByUserName(cookie.getValue());
                    break;
                }
            }
        }
        mav.addObject("user", user);

        System.out.println("------login------");
        System.out.println(JSON.toJSONString(user));
        System.out.println("------login------");

        ius.getAllUsers();

        return mav;
    }

    @RequestMapping(value = "index.html", method = RequestMethod.POST)
    public ModelAndView returnIndexAfterLogin(@RequestParam String userEmail, @RequestParam String userPassword,
                                              HttpSession session, HttpServletResponse response){
        User user = ius.getUserByUserEmail(userEmail);

        ModelAndView mav = new ModelAndView("index");
        mav.addObject(user);

        session.setAttribute("user", userEmail);
        Cookie cookie = new Cookie("userName", user.getUserName());
        response.addCookie(cookie);

        return mav;
    }

    @RequestMapping(value = "/login.html", method = RequestMethod.GET)
    public ModelAndView login(){
        ModelAndView mav = new ModelAndView("login");
        return mav;
    }

    @RequestMapping(value = "/register.html", method = RequestMethod.GET)
    public ModelAndView register(){
        ModelAndView mav = new ModelAndView("register");
        return mav;
    }

    @RequestMapping(value = "/login.html", method = RequestMethod.POST)
    public ModelAndView loginAfterRegister(@RequestParam String userName, @RequestParam String userEmail,
                                           @RequestParam String userPassword){

        User user = new User();
        String uuid = UUID.randomUUID().toString().replaceAll("-", "");
        user.setuserUUID(uuid);
        user.setUserName(userName);
        user.setUserEmail(userEmail);
        user.setUserPassword(userPassword);

        System.out.println("------loginAfterRegister------");
        System.out.println(JSON.toJSONString(user));
        System.out.println("------loginAfterRegister------");

        ModelAndView mav = new ModelAndView("login");
        if(user.getUserName() != null && user.getUserEmail() != null && user.getUserPassword() != null){
            ius.insertUser(user);
        }
        return mav;
    }

    @RequestMapping("logout.html")
    public ModelAndView logout(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.invalidate();

        Cookie[] cookies = request.getCookies();
        for(Cookie cookie:cookies){
            cookie.setMaxAge(0);
        }

        ModelAndView mav = new ModelAndView("index");
        User user = new User();

        return mav;
    }

    @RequestMapping("my_orders.html")
    public ModelAndView getMyOrders(){
        ModelAndView mav = new ModelAndView("my_orders");
        return mav;
    }

}
