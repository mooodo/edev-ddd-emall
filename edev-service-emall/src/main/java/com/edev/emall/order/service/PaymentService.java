package com.edev.emall.order.service;

import com.edev.emall.order.entity.Order;

public interface PaymentService {
    void payoff(Order order);
    void refund(Order order);
}
