package com.edev.emall.security.entity;

import com.edev.emall.authority.entity.Authority;
import com.edev.emall.authority.entity.User;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.*;
import java.util.stream.Collectors;

public class DefaultUserDetails implements UserDetails {
    private final User user;
    public DefaultUserDetails(User user) {
        this.user = user;
    }
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        List<Authority> authorities = new ArrayList<>(user.getAuthorities());
        user.getRoles().forEach(role -> authorities.addAll(role.getAuthorities()));

        Collection<GrantedAuthority> grantedAuthorities = new HashSet<>();
        authorities.forEach(authority -> {
            grantedAuthorities.add(new GrantedAuthority() {
                @Override
                public String getAuthority() {
                    return authority.getName();
                }
            });
        });

        grantedAuthorities.add(new GrantedAuthority() {
            @Override
            public String getAuthority() {
                return user.getUserType();
            }
        });
        return grantedAuthorities.stream().distinct().collect(Collectors.toSet());
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
