package com.edev.emall.authority.service;

import com.edev.emall.authority.entity.Authority;

public interface AuthorityService {
    Long create(Authority authority);
    void modify(Authority authority);
    void remove(Long authorityId);
    Authority load(Long authorityId);
}
