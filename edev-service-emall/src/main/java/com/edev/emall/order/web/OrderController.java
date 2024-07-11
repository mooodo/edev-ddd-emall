package com.edev.emall.order.web;

import com.edev.emall.order.entity.Order;
import com.edev.emall.order.entity.Payment;
import com.edev.emall.order.service.OrderAggService;
import com.edev.emall.order.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("order")
public class OrderController {
    @Autowired
    private OrderAggService orderAggService;
    @PostMapping("placeOrder")
    public void placeOrder(@RequestBody Order order) {
        orderAggService.placeOrder(order);
    }
    @GetMapping("cancelOrder")
    public void cancelOrder(Long orderId) {
        orderAggService.cancelOrder(orderId);
    }
    @PostMapping("payoff")
    public void payoff(@RequestBody Payment payment) {
        orderAggService.payoff(payment);
    }
    @GetMapping("returnGoods")
    public void returnGoods(Long orderId) {
        orderAggService.returnGoods(orderId);
    }
    @Autowired
    protected OrderService orderService;
    @PostMapping("load")
    public Order load(Long orderId) {
        return orderService.load(orderId);
    }
}
