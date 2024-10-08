package com.edev.emall.order.service.impl;

import com.edev.emall.inventory.service.InventoryService;
import com.edev.emall.order.entity.Order;
import com.edev.emall.order.service.OrderAggService;
import com.edev.emall.order.service.OrderService;
import com.edev.emall.order.service.PaymentService;
import com.edev.emall.vip.service.VipService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import static com.edev.emall.utils.ValidUtils.*;

@Service("orderAgg")
@Slf4j
public class OrderAggServiceImpl implements OrderAggService {
    @Autowired
    private OrderService orderService;
    @Autowired
    private PaymentService paymentService;
    @Autowired
    private InventoryService inventoryService;
    @Autowired
    private VipService vipService;
    @Override
    public void placeOrder(Order order) {
        log.debug("create an order");
        order.setStatus("create");
        orderService.create(order);
    }

    @Override
    public void cancelOrder(Long orderId) {
        Order order = orderService.load(orderId);
        isError(!"create".equals(order.getStatus()), "The order has payoff, so cannot cancel!");
        log.debug("remove the order");
        orderService.remove(orderId);
    }

    @Override
    @Transactional
    public void payoff(Long orderId, String paymentMethod) {
        Order order = orderService.load(orderId);
        isNull(order, "The order not exists[orderId:%d]", orderId);
        isError(!"create".equals(order.getStatus()),
                "The order[orderId:%d] has payoff and cannot payoff twice!", orderId);

        log.debug("change the order's status to payoff");
        order.setStatus("payoff");
        orderService.modify(order);

        log.debug("payoff the order");
        paymentService.payoff(orderId, paymentMethod);

        log.debug("stock out for each of the order items");
        order.getOrderItems().forEach(orderItem -> inventoryService.stockOut(orderItem.getProductId(), orderItem.getQuantity()));

        log.debug("accumulate points if is vip");
        vipService.accumulatePoints(order.getCustomerId(), order.getAmount());
    }

    @Override
    @Transactional
    public void returnGoods(Long orderId) {
        Order order = orderService.load(orderId);
        isNull(order, "The order not exists[orderId:%d]", orderId);
        isError(order.getPayment()==null||!"payoff".equals(order.getPayment().getStatus()),
                "The order[orderId:%d] cannot return goods!", orderId);

        log.debug("change the order's status to return goods");
        order.setStatus("return goods");
        orderService.modify(order);

        log.debug("refund for the order");
        paymentService.refund(orderId);

        log.debug("stock in for each of the order items");
        order.getOrderItems().forEach(orderItem -> inventoryService.stockIn(orderItem.getProductId(), orderItem.getQuantity()));
    }
}
