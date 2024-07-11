package com.edev.emall.order.service;

import com.edev.emall.order.entity.Payment;

public interface PaymentService {
    void payoff(Payment payment);
    void refund(Long orderId);
    Payment check(Long orderId);
    Boolean isPayoff(Long orderId);
}
