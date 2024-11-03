package com.edev.emall.order.web;

import com.edev.emall.order.entity.Discount;
import com.edev.emall.order.service.DiscountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("discount")
public class DiscountController {
    @Autowired
    private DiscountService discountService;
    @PostMapping("create")
    @PreAuthorize("hasAuthority('administrator')")
    public Long create(@RequestBody Discount discount) {
        return discountService.create(discount);
    }
    @PostMapping("modify")
    @PreAuthorize("hasAuthority('administrator')")
    public void modify(@RequestBody Discount discount) {
        discountService.modify(discount);
    }
    @GetMapping("remove")
    @PreAuthorize("hasAuthority('administrator')")
    public void remove(Long discountId) {
        discountService.deleteById(discountId);
    }
    @GetMapping("load")
    @PreAuthorize("hasAuthority('administrator')")
    public Discount load(Long discountId) {
        return discountService.loadById(discountId);
    }
}
