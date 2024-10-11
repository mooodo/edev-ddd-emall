package com.edev.emall.authority.service;

import com.edev.emall.authority.entity.Role;

import java.util.List;

public interface RoleService {
    Long create(Role role);
    void modify(Role role);
    void remove(Long roleId);
    Role load(Long roleId);
    List<Role> loadAll(List<Long> roleIds);
}
