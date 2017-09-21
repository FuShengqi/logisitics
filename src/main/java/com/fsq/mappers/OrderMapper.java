package com.fsq.mappers;

import com.fsq.entity.Order;
import com.sun.org.apache.xpath.internal.operations.Or;

import java.util.List;

/**
 * Created by FuShengqi on 2017/9/17.
 */
public interface OrderMapper {

    void insertOrder(Order order);

    List<Order> getAllFinishedOrder(String senderName);

    List<Order> getAllDealedOrder();

    List<Order> getAllUnfinishedOrder(String senderName);

    List<Order> getAllUndealedOrder();

    List<Order> getOrderBySenderName(String SenderName);

    void updateOrderStatus(int status, String senderName);

    int count();

}
