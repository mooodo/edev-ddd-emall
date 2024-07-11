package com.edev.emall.authority.web;

import com.edev.emall.authority.entity.Authority;
import com.edev.emall.authority.service.AuthorityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("authority")
public class AuthorityController {
    @Autowired
    private AuthorityService service;
    @PostMapping("create")
    @PreAuthorize("hasAuthority('admin')")
    public Long create(@RequestBody Authority authority) {
        return service.create(authority);
    }
    @PostMapping("modify")
    @PreAuthorize("hasAuthority('admin')")
    public void modify(@RequestBody Authority authority) {
        service.modify(authority);
    }
    @GetMapping("remove")
    @PreAuthorize("hasAuthority('admin')")
    public void remove(Long authorityId) {
        service.remove(authorityId);
    }
    @GetMapping("load")
    @PreAuthorize("hasAuthority('admin')")
    public Authority load(Long authorityId) {
        return service.load(authorityId);
    }
}
