package com.edev.emall.customer.web;

import com.edev.emall.customer.entity.Account;
import com.edev.emall.customer.service.AccountService;
import com.edev.emall.security.utils.SecurityHelper;
import com.edev.support.entity.ResultSet;
import com.edev.support.exception.ValidException;
import com.edev.support.query.QueryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;
import java.util.Objects;

@RestController
@RequestMapping("account")
public class AccountController {
    @Autowired
    private AccountService accountService;
    @Autowired
    private SecurityHelper securityHelper;
    @GetMapping("topUp")
    @PreAuthorize("hasAuthority('customer')")
    public Double topUp(Long id, Double amount) {
        if(!Objects.equals(securityHelper.getCurrentUser().getId(), id))
            throw new ValidException("Just topUp self only!");
        return accountService.topUp(id, amount);
    }
    @GetMapping("payoff")
    @PreAuthorize("hasAuthority('customer')")
    public Double payoff(Long id, Double amount) {
        if(!Objects.equals(securityHelper.getCurrentUser().getId(), id))
            throw new ValidException("Just payoff self only!");
        return accountService.payoff(id, amount);
    }
    @GetMapping("refund")
    @PreAuthorize("hasAuthority('customer')")
    public Double refund(Long id, Double amount) {
        if(!Objects.equals(securityHelper.getCurrentUser().getId(), id))
            throw new ValidException("Just refund self only!");
        return accountService.refund(id, amount);
    }
    @GetMapping("get")
    @PreAuthorize("hasAuthority('customer')")
    public Account get(Long id) {
        if(!Objects.equals(securityHelper.getCurrentUser().getId(), id))
            throw new ValidException("Just get account self only!");
        return accountService.get(id);
    }
    @GetMapping("remove")
    @PreAuthorize("hasAuthority('customer')")
    public void remove(Long id) {
        if(!Objects.equals(securityHelper.getCurrentUser().getId(), id))
            throw new ValidException("Just remove account self only!");
        accountService.remove(id);
    }
    @Autowired @Qualifier("accountQry")
    private QueryService queryService;
    @GetMapping("query")
    public ResultSet query(Map<String, Object> params) {
        return queryService.query(params);
    }
}
