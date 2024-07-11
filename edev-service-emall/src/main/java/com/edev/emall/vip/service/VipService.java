package com.edev.emall.vip.service;

import com.edev.emall.customer.entity.Customer;
import com.edev.emall.vip.entity.Vip;

public interface VipService {
    Long register(Vip vip);
    void modify(Vip vip);
    void remove(Long vipId);
    Vip load(Long vipId);
    boolean exists(Long vipId);
    Vip loadByCustomer(Long customerId);
    void accumulatePoints(Long vipId, long spendingAmount);
    Long redeemPoints(Long vipId, long pointsToRedeem);
}
