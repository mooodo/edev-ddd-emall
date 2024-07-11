package com.edev.emall.order.service;

import com.edev.emall.order.entity.Order;
import com.edev.emall.order.entity.Payment;

public interface OrderAggService {
    void placeOrder(Order order);
    void cancelOrder(Long orderId);
    void payoff(Payment payment);
    void returnGoods(Long orderId);
}
