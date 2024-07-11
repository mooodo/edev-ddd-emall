package com.edev.emall.vip.service.impl;

import com.edev.emall.vip.entity.Vip;
import com.edev.emall.customer.service.CustomerService;
import com.edev.emall.vip.service.VipService;
import com.edev.support.dao.BasicDao;
import com.edev.support.exception.ValidException;
import com.edev.support.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;

import static com.edev.emall.utils.ValidUtils.*;

public class VipServiceImpl implements VipService {
    private final BasicDao dao;
    public VipServiceImpl(BasicDao dao) {
        this.dao = dao;
    }
    @Autowired
    private CustomerService customerService;
    private void valid(Vip vip) {
        isNotExists(vip.getId(), (customerId)-> customerService.exists(customerId), "the customer of the vip");
    }
    @Override
    public Long register(Vip vip) {
        valid(vip);
        vip.setCreateTime(DateUtils.getNow());
        return dao.insert(vip);
    }

    @Override
    public void modify(Vip vip) {
        valid(vip);
        vip.setModifyTime(DateUtils.getNow());
        dao.update(vip);
    }

    @Override
    public void remove(Long vipId) {
        dao.delete(vipId, Vip.class);
    }

    @Override
    public Vip load(Long vipId) {
        return dao.load(vipId, Vip.class);
    }

    @Override
    public boolean exists(Long vipId) {
        return load(vipId)!=null;
    }

    @Override
    public Vip loadByCustomer(Long customerId) {
        return load(customerId);
    }

    @Override
    public void accumulatePoints(Long vipId, long spendingAmount) {
        Vip vip = load(vipId);
        if(vip==null) return;
        vip.setPoints(vip.getPoints()+spendingAmount);
        vip.setAccumulatedPoints(vip.getAccumulatedPoints()+spendingAmount);
    }

    @Override
    public Long redeemPoints(Long vipId, long pointsToRedeem) {
        Vip vip = load(vipId);
        if(vip==null) throw new ValidException("The vip not exist");
        if(vip.getPoints()==null) throw new ValidException("No points of the vip");
        long points = vip.getPoints()-pointsToRedeem;
        if(points<0) throw new ValidException("Not enough the points of the vip");
        vip.setPoints(points);
        return points;
    }
}
