package com.edev.emall.order.service.impl.payment;

import com.edev.emall.customer.service.AccountService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component()
@Slf4j
public class AccountAdaptor implements PaymentAdaptor {
    @Autowired
    private AccountService accountService;
    @Override
    @Transactional
    public void payoff(Long customerId, Double amount) {
        log.info("payoff using the customer's account");
        accountService.payoff(customerId, amount);
    }
    @Override
    @Transactional
    public void refund(Long customerId, Double amount) {
        log.info("refund to the customer's account");
        accountService.refund(customerId, amount);
    }
}
