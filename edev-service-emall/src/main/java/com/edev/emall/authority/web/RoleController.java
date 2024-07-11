package com.edev.emall.authority.web;

import com.edev.emall.authority.entity.Role;
import com.edev.emall.authority.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("role")
public class RoleController {
    @Autowired
    private RoleService service;
    @PostMapping("create")
    @PreAuthorize("hasAuthority('admin')")
    public Long create(@RequestBody Role role) {
        return service.create(role);
    }
    @PostMapping("modify")
    @PreAuthorize("hasAuthority('admin')")
    public void modify(@RequestBody Role role) {
        service.modify(role);
    }
    @GetMapping("remove")
    @PreAuthorize("hasAuthority('admin')")
    public void remove(Long roleId) {
        service.remove(roleId);
    }
    @GetMapping("load")
    @PreAuthorize("hasAuthority('admin')")
    public Role load(Long roleId) {
        return service.load(roleId);
    }
}
