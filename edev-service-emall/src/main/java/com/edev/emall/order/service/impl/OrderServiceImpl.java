package com.edev.emall.order.service.impl;

import com.edev.emall.customer.service.CustomerService;
import com.edev.emall.order.entity.Order;
import com.edev.emall.order.entity.OrderItem;
import com.edev.emall.order.service.DiscountService;
import com.edev.emall.order.service.OrderService;
import com.edev.emall.product.service.ProductService;
import com.edev.support.dao.BasicDao;
import com.edev.support.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;

import static com.edev.emall.utils.ValidUtils.*;

public class OrderServiceImpl implements OrderService {
    private final BasicDao dao;
    public OrderServiceImpl(BasicDao dao) {
        this.dao = dao;
    }
    @Autowired
    private CustomerService customerService;
    @Autowired
    private ProductService productService;
    @Autowired
    private DiscountService discountService;
    private void valid(Order order) {
        isNotExists(order.getCustomerId(), (value)-> customerService.exists(value), "the customer of the order");
        isNotExists(order.getAddressId(), (value)-> customerService.existsAddress(value), "the address of the order");
        order.getOrderItems().forEach(
                (orderItem)->isNotExists(orderItem.getProductId(), (value)->productService.exists(value), "the product of the order item")
        );
    }
    private void calculateAmountForEachItem(Order order) {
        order.getOrderItems().forEach(orderItem -> {
            double amount = orderItem.getPrice() * orderItem.getQuantity();
            orderItem.setAmount(amount);
        });
    }
    private void discount(Order order) {
        if(order!=null) discountService.doDiscount(order);
    }
    private void sumOfAmount(Order order) {
        Double totalAmount = 0D;
        for (OrderItem orderItem : order.getOrderItems())
            totalAmount += orderItem.getAmount();
        order.setAmount(totalAmount);
    }
    @Override
    public Long create(Order order) {
        valid(order);
        calculateAmountForEachItem(order);
        discount(order);
        sumOfAmount(order);
        order.setStatus("create");
        order.setOrderTime(DateUtils.getNow());
        return dao.insert(order);
    }

    @Override
    public void modify(Order order) {
        valid(order);
        calculateAmountForEachItem(order);
        discount(order);
        sumOfAmount(order);
        order.setModifyTime(DateUtils.getNow());
        dao.update(order);
    }

    @Override
    public void remove(Long orderId) {
        dao.delete(orderId, Order.class);
    }

    @Override
    public Order load(Long orderId) {
        return dao.load(orderId, Order.class);
    }
}
