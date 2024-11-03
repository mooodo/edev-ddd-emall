package com.edev.emall.order.web;

import com.edev.emall.order.entity.Order;
import com.edev.emall.order.service.OrderAggService;
import com.edev.emall.order.service.OrderService;
import com.edev.emall.security.utils.SecurityHelper;
import com.edev.support.entity.ResultSet;
import com.edev.support.query.QueryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("order")
public class OrderController {
    @Autowired
    private OrderAggService orderAggService;
    @Autowired
    private SecurityHelper securityHelper;
    @PostMapping("placeOrder")
    @PreAuthorize("hasAuthority('customer')")
    public void placeOrder(@RequestBody Order order) {
        Long currentCustomerId = securityHelper.getCurrentUser().getId();
        order.setCustomerId(currentCustomerId);
        orderAggService.placeOrder(order);
    }
    @GetMapping("cancelOrder")
    @PreAuthorize("hasAuthority('customer')")
    public void cancelOrder(Long orderId) {
        orderAggService.cancelOrder(orderId);
    }
    @PostMapping("payoff")
    @PreAuthorize("hasAuthority('customer')")
    public void payoff(Long orderId, String paymentMethod) {
        orderAggService.payoff(orderId, paymentMethod);
    }
    @GetMapping("returnGoods")
    @PreAuthorize("hasAuthority('customer')")
    public void returnGoods(Long orderId) {
        orderAggService.returnGoods(orderId);
    }
    @Autowired
    protected OrderService orderService;
    @PostMapping("load")
    @PreAuthorize("hasAuthority('customer')")
    public Order load(Long orderId) {
        return orderService.load(orderId);
    }
    @Autowired @Qualifier("orderQry")
    private QueryService queryService;
    @PostMapping("query")
    public ResultSet query(@RequestBody Map<String, Object> params) {
        return queryService.query(params);
    }
}
