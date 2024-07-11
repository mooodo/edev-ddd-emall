package com.edev.emall.inventory.web;

import com.edev.emall.inventory.entity.Inventory;
import com.edev.emall.inventory.service.InventoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("inventory")
public class InventoryController {
    @Autowired
    private InventoryService inventoryService;
    @GetMapping("stockIn")
    public void stockIn(Long productId, Integer quantity) {
        inventoryService.stockIn(productId, quantity);
    }
    @GetMapping("stockOut")
    public void stockOut(Long productId, Integer quantity) {
        inventoryService.stockOut(productId, quantity);
    }
    @GetMapping("remove")
    public void remove(Long productId) {
        inventoryService.remove(productId);
    }
    @GetMapping("check")
    public Inventory check(Long productId) {
        return inventoryService.check(productId);
    }
}
