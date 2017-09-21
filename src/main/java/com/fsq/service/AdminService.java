package com.fsq.service;

import com.fsq.entity.Order;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by FuShengqi on 2017/9/18.
 */

@Service
public class AdminService {

    @Resource
    private IOrderService ios;

    @Resource
    private IUserService ius;

    public List<Order> getAllUndealedOrder(){
        return ios.getAllUndealedOrder();
    }

}
