package com.edev.emall.order.service.impl;

import com.edev.emall.order.entity.Order;
import com.edev.emall.order.entity.Payment;
import com.edev.emall.order.service.OrderService;
import com.edev.emall.order.service.PaymentService;
import com.edev.support.dao.BasicDao;
import com.edev.support.exception.ValidException;
import com.edev.support.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;

public class PaymentServiceImpl implements PaymentService {
    private final BasicDao dao;
    public PaymentServiceImpl(BasicDao dao) {
        this.dao = dao;
    }
    @Autowired
    private OrderService orderService;
    @Override
    public void payoff(Payment payment) {
        Long orderId = payment.getId();
        Order order = orderService.load(orderId);
        if(order==null) throw new ValidException("Not exists the order to payoff!");
        if(order.getPayment()==null) order.readyForPay();
        order.getPayment().setAmount(order.getAmount());
        order.getPayment().setMethod(payment.getMethod());
        order.getPayment().setStatus("payoff");
        order.getPayment().setPaymentTime(DateUtils.getNow());
        order.setStatus("payoff");
        dao.update(order);
    }

    @Override
    public void refund(Long orderId) {
        Payment payment = check(orderId);
        if(payment==null||!payment.getStatus().equals("payoff"))
            throw new ValidException("The order cannot refund[orderId:%s", orderId);
        payment.setStatus("refund");
        dao.update(payment);
    }

    @Override
    public Payment check(Long orderId) {
        return dao.load(orderId, Payment.class);
    }

    @Override
    public Boolean isPayoff(Long orderId) {
        return check(orderId)!=null;
    }
}
