package com.edev.emall.order.service.impl;

import com.edev.emall.inventory.service.InventoryService;
import com.edev.emall.order.entity.Order;
import com.edev.emall.order.entity.Payment;
import com.edev.emall.order.service.OrderAggService;
import com.edev.emall.order.service.OrderService;
import com.edev.emall.order.service.PaymentService;
import com.edev.support.exception.ValidException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("orderAgg")
@Slf4j
public class OrderAggServiceImpl implements OrderAggService {
    @Autowired
    private OrderService orderService;
    @Autowired
    private PaymentService paymentService;
    @Autowired
    private InventoryService inventoryService;
    @Override
    public void placeOrder(Order order) {
        log.debug("create an order");
        orderService.create(order);
    }

    @Override
    public void cancelOrder(Long orderId) {
        if(paymentService.isPayoff(orderId))
            throw new ValidException("The order has payoff, so cannot cancel!");
        log.debug("remove the order");
        orderService.remove(orderId);
    }

    @Override
    @Transactional
    public void payoff(Payment payment) {
        Long orderId = payment.getId();
        Order order = orderService.load(orderId);
        if(order==null) throw new ValidException("The order not exists[orderId:%s]",orderId);
        if(paymentService.isPayoff(orderId))
            throw new ValidException("The order has payoff, so cannot payoff twice!");
        log.debug("payoff the order");
        paymentService.payoff(payment);
        log.debug("stock out for each of the order items");
        order.getOrderItems().forEach(orderItem -> {
            inventoryService.stockOut(orderItem.getProductId(), orderItem.getQuantity());
        });
        log.debug("change the order's status to payoff");
        order.setStatus("payoff");
        orderService.modify(order);
    }

    @Override
    @Transactional
    public void returnGoods(Long orderId) {
        Order order = orderService.load(orderId);
        if(order==null) throw new ValidException("The order not exists[orderId:%s]",orderId);
        if(!paymentService.isPayoff(orderId))
            throw new ValidException("The order hasn't payoff, so cannot return goods!");
        log.debug("refund for the order");
        paymentService.refund(orderId);
        order.getOrderItems().forEach(orderItem -> {
            inventoryService.stockIn(orderItem.getProductId(), orderItem.getQuantity());
        });
        log.debug("change the order's status to return goods");
        order.setStatus("return goods");
        orderService.modify(order);
    }
}
