package com.edev.emall.security.entity;

import com.edev.emall.authority.entity.Authority;
import com.edev.emall.authority.entity.User;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;

public class DefaultUserDetails implements UserDetails {
    private final User user;
    public DefaultUserDetails(User user) {
        this.user = user;
    }
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        List<Authority> authorities = user.getAuthorities();
        user.getRoles().forEach(role -> authorities.addAll(role.getAuthorities()));
        Collection<GrantedAuthority> grantedAuthorities = new HashSet<>();
        authorities.stream().distinct().forEach(authority -> {
            grantedAuthorities.add(new GrantedAuthority() {
                @Override
                public String getAuthority() {
                    return authority.getName();
                }
            });
        });
        return grantedAuthorities;
    }

    @Override
    public String getPassword() {
        return user.getPassword();
    }

    @Override
    public String getUsername() {
        return user.getUsername();
    }

    @Override
    public boolean isAccountNonExpired() {
        return !user.getAccountExpired();
    }

    @Override
    public boolean isAccountNonLocked() {
        return !user.getAccountLocked();
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return !user.getCredentialsExpired();
    }

    @Override
    public boolean isEnabled() {
        return !user.getDisabled();
    }
}
