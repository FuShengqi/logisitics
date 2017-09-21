package com.fsq.service;

import com.alibaba.fastjson.JSON;
import com.fsq.entity.Order;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created by FuShengqi on 2017/9/17.
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
public class OrderServiceTest {

    @Resource
    private IOrderService ios;

    @Test
    public void insertTest(){
        Order order = new Order();
        String uuid = UUID.randomUUID().toString().replaceAll("-", "");
        order.setOrderUUID(uuid);
        order.setSenderName("xiaoming");
        order.setSenderAddress("安徽大学");
        order.setSenderTel("1234567890");
        order.setReceiverName("xiaozhang");
        order.setReceiverAddress("未来");
        order.setReceiverTel("9876543210");
        order.setOrderDate(new Date());
        order.setPrice(200);
        order.setStatus(1);
        order.setWeight(10);

        ios.insertOrder(order);
    }

    @Test
    public void getAllFinishedOrderTest(){
        List<Order> orderList = ios.getAllFinishedOrder("xiaoming");
        String result = JSON.toJSONString(orderList);
        System.out.println(result);
    }

}
