package com.edev.emall.authority.service;

import com.edev.emall.authority.entity.User;

import java.util.List;

public interface UserService {
    Long register(User user);
    void modify(User user);
    void remove(Long userId);
    User load(Long userId);
    void removeByName(String username);
    User loadByName(String username);
    boolean userExists(String username);
}
