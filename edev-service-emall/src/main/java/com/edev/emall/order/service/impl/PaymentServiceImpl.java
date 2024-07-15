package com.edev.emall.order.service.impl;

import com.edev.emall.order.entity.Order;
import com.edev.emall.order.entity.Payment;
import com.edev.emall.order.service.OrderService;
import com.edev.emall.order.service.PaymentService;
import com.edev.emall.order.service.impl.payment.PaymentAdaptor;
import com.edev.support.dao.BasicDao;
import com.edev.support.exception.ValidException;
import com.edev.support.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service("payment")
public class PaymentServiceImpl implements PaymentService {
    @Autowired
    private ApplicationContext applicationContext;
    @Autowired
    private OrderService orderService;
    private Map<String, PaymentAdaptor> adaptors;
    private Map<String, PaymentAdaptor> getAdaptors() {
        if(adaptors == null)
            adaptors = applicationContext.getBeansOfType(PaymentAdaptor.class);
        return adaptors;
    }
    @Override
    public void payoff(Order order) {
        Payment payment = order.getPayment();
        PaymentAdaptor adaptor = getAdaptors().get(payment.getMethod()+"Adaptor");
        adaptor.payoff(order.getCustomerId(), payment.getAmount());
    }

    @Override
    public void refund(Order order) {
        Payment payment = order.getPayment();
        PaymentAdaptor adaptor = getAdaptors().get(payment.getMethod()+"Adaptor");
        adaptor.refund(order.getCustomerId(), payment.getAmount());
    }
}
