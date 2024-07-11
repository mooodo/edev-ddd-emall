package com.edev.emall.supplier.web;

import com.edev.emall.supplier.entity.Supplier;
import com.edev.emall.supplier.service.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("supplier")
public class SupplierController {
    @Autowired
    private SupplierService supplierService;
    @PostMapping("create")
    public Long create(@RequestBody Supplier supplier) {
        return supplierService.create(supplier);
    }
    @PostMapping("modify")
    public void modify(@RequestBody Supplier supplier) {
        supplierService.modify(supplier);
    }
    @GetMapping("remove")
    public void remove(Long supplierId) {
        supplierService.remove(supplierId);
    }
    @GetMapping("load")
    public Supplier load(Long supplierId) {
        return supplierService.load(supplierId);
    }
}
