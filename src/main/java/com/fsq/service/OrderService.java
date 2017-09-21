package com.fsq.service;

import com.fsq.entity.Order;
import com.fsq.mappers.OrderMapper;
import com.sun.org.apache.xpath.internal.operations.Or;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created by FuShengqi on 2017/9/17.
 */

@Service
public class OrderService implements IOrderService {
    @Resource
    private OrderMapper orderMapper;

    public void insertOrder(Order order) {
        String uuid = UUID.randomUUID().toString().replaceAll("-", "");
        order.setOrderUUID(uuid);
        Date date = new Date();
        order.setOrderDate(date);
        orderMapper.insertOrder(order);
    }

    public List<Order> getAllFinishedOrder(String senderName) {
        return orderMapper.getAllFinishedOrder(senderName);
    }

    public List<Order> getAllDealedOrder() {
        return orderMapper.getAllDealedOrder();
    }

    public List<Order> getAllUnfinishedOrder(String senderName) {
        return orderMapper.getAllUnfinishedOrder(senderName);
    }

    public List<Order> getAllUndealedOrder() {
        return orderMapper.getAllUndealedOrder();
    }

    public List<Order> getOrderBySenderName(String senderName) {
        return orderMapper.getOrderBySenderName(senderName);
    }

    public void updateOrderStatus(int status, String senderName) {
        orderMapper.updateOrderStatus(status, senderName);
    }

    public int count() {
        return orderMapper.count();
    }
}
