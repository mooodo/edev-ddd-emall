package com.edev.emall.vip.entity;

import com.edev.support.entity.Entity;
import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(callSuper = true)
@Data
public class PointsRule extends Entity<Long> {
    private Long id;
    private int pointsPerDollar; // 每消费一定金额获得的积分数
    private int pointsCap; // 单次购买可获得的积分上限

    // 计算积分的方法
    public int calculatePoints(int spendingAmount) {
        int points = spendingAmount / pointsPerDollar;
        return Math.min(points, pointsCap); // 返回积分，但不能超过上限
    }
}
