package com.fsq.controller;

import com.alibaba.fastjson.JSON;
import com.fsq.entity.Order;
import com.fsq.service.IOrderService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by FuShengqi on 2017/9/17.
 */

@Controller
public class OrderController {

    @Resource
    private IOrderService ios;

    private String senderName = null;

    @RequestMapping(value = "submit", method = RequestMethod.POST)
    public ModelAndView submit(Order order, HttpServletRequest request){
        order.setStatus(0);

        int price = 0;
        if(order.getServiceName().equals("物流普运  ¥10/kg")){
            price = order.getWeight() * 10;
        } else if(order.getServiceName().equals("物流快运  ¥20/kg")){
            price = order.getWeight() * 20;
        } else if(order.getServiceName().equals("重货专运  ¥30/kg")){
            price = order.getWeight() * 30;
        }
        order.setPrice(price);

        ios.insertOrder(order);

        System.out.println("------order------");
        System.out.println(JSON.toJSONString(order));
        System.out.println("------order------");

        ModelAndView mav = new ModelAndView("unfinished_order");
        List<Order> orders = ios.getAllUnfinishedOrder(order.getSenderName());
        mav.addObject("orders", orders);
        System.out.println("------submit------");
        System.out.println(JSON.toJSONString(orders));
        System.out.println("------submit------");
        return mav;
    }

    @RequestMapping("unfinished_orders.html")
    public ModelAndView getAllUnfinishedOrders(HttpServletRequest request){
        Cookie[] cookies = request.getCookies();
        for(Cookie cookie : cookies){
            if(cookie.getName().equals("userName")){
                senderName = cookie.getValue();
                break;
            }
        }
        System.out.println("------value of cookie------");
        System.out.println(JSON.toJSONString(senderName));
        System.out.println("------value of cookie------");
        ModelAndView mav = new ModelAndView("unfinished_order");
        List<Order> orders = ios.getAllUnfinishedOrder(senderName);
        System.out.println("------AllUnfinishedOrder------");
        if(orders == null){
            System.out.println("unfinished orders is null");
        } else {
            System.out.println("unfinished orders is not null");
        }
        System.out.println(JSON.toJSONString(orders));
        System.out.println("------AllUnfinishedOrder------");
        mav.addObject("orders", orders);
        return mav;
    }

    @RequestMapping("finished_orders.html")
    public ModelAndView getAllFinishedOrders(HttpServletRequest request){
        Cookie[] cookies = request.getCookies();
        for(Cookie cookie : cookies){
            if(cookie.getName().equals("userName")){
                senderName = cookie.getValue();
                break;
            }
        }

        List<Order> orders = ios.getAllFinishedOrder(senderName);
        System.out.println("------AllFinishedOrder------");
        if(orders == null){
            System.out.println("finished orders is null");
        } else {
            System.out.println("finished orders is not null");
        }
        System.out.println(JSON.toJSONString(orders));
        System.out.println("------AllFinishedOrder------");
        ModelAndView mav = new ModelAndView("finished_order");
        mav.addObject("orders", orders);
        return mav;
    }

}
