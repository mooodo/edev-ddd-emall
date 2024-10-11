package com.edev.emall.security;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
    @Value("${security.loginUrl}")
    private String loginUrl;
    @Value("${security.whiteListUrls}")
    private String whiteListUrls;
    // Define which requests need authenticate and authorise.
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.cors().disable();
        http.csrf().disable();
        http.authorizeRequests()
                .antMatchers(whiteListUrls.split(",")).permitAll()
                .anyRequest().authenticated()

                .and()
                .formLogin()
                //.loginPage(loginUrl)
                .loginProcessingUrl("/login")
                .permitAll()
                .and().httpBasic();
    }
}
