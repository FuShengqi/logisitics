package com.fsq.controller;

import com.alibaba.fastjson.JSON;
import com.fsq.entity.Order;
import com.fsq.entity.User;
import com.fsq.service.AdminService;
import com.fsq.service.IOrderService;
import com.fsq.service.OrderService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by FuShengqi on 2017/9/18.
 */

@Controller
public class AdminController {

    @Resource
    private AdminService as;

    @Resource
    private IOrderService ios;

    @RequestMapping("admin_login.html")
    public ModelAndView adminLogin(){
        ModelAndView mav = new ModelAndView("admin_login");
        return mav;
    }

    @RequestMapping(value = "admin_panel.html", method = RequestMethod.POST)
    public ModelAndView adminPanel(String adminName, HttpServletResponse response){
        ModelAndView mav = new ModelAndView("admin_panel");
        Cookie cookie = new Cookie("adminName", adminName);
        response.addCookie(cookie);
        return mav;
    }

    @RequestMapping("undealed_orders.html")
    public ModelAndView undealedOrder(){
        List<Order> orders = as.getAllUndealedOrder();
        System.out.println("------undealed order------");
        System.out.println(JSON.toJSONString(orders));
        System.out.println("------undealed order------");
        ModelAndView mav = new ModelAndView("undealed_orders");
        mav.addObject("orders", orders);
        return mav;
    }

    @RequestMapping("accept_order")
    @ResponseBody
    public User acceptOrder(HttpServletRequest request){
        String senderName = request.getParameter("senderName");
        System.out.println("------accept order------");
        ios.updateOrderStatus(1, senderName);
        System.out.println("------accept order has done------");
        User user = new User();
        return user;
    }

}
