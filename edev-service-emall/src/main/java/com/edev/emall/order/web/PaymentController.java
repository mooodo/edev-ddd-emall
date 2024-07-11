package com.edev.emall.order.web;

import com.edev.emall.order.entity.Payment;
import com.edev.emall.order.service.PaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("payment")
public class PaymentController {
    @Autowired
    private PaymentService paymentService;
    @GetMapping("check")
    public Payment check(Long paymentId) {
        return paymentService.check(paymentId);
    }
}
