package com.edev.emall.authority.web;

import com.edev.emall.authority.entity.User;
import com.edev.emall.authority.service.UserService;
import com.edev.emall.security.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("user")
public class UserController {
    @Autowired
    private UserService service;
    @Value("${security.passwordEncoder}")
    private String passwordEncoder;
    private void encodePassword(User user) {
        String password = String.format("{%s}%s",passwordEncoder,user.getPassword());
        user.setPassword(password);
    }
    @PostMapping("register")
    public Long register(@RequestBody User user) {
        encodePassword(user);
        return service.register(user);
    }
    @PostMapping("modify")
    @PreAuthorize("hasAuthority('admin')")
    public void modify(@RequestBody User user) {
        encodePassword(user);
        service.modify(user);
    }
    @GetMapping("remove")
    @PreAuthorize("hasAuthority('admin')")
    public void remove(Long userId) {
        service.remove(userId);
    }
    @GetMapping("load")
    @PreAuthorize("hasAuthority('admin')")
    public User load(Long userId) {
        return service.load(userId);
    }
    @GetMapping("removeMyself")
    public void removeMyself() {
        String username = SecurityUtils.getMyName();
        service.removeByName(username);
    }
    @GetMapping("showMe")
    public User showMe() {
        String username = SecurityUtils.getMyName();
        return service.loadByName(username);
    }
    @GetMapping("changePassword")
    public void changePassword(String oldPwd, String newPwd) {
        User me = showMe();
        if(!SecurityUtils.passwordIsMatch(oldPwd, me.getPassword()))
            throw new BadCredentialsException("Wrong Password!");
        me.setPassword(newPwd);
        encodePassword(me);
        service.modify(me);
    }
}
