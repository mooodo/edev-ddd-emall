package com.edev.emall.customer.web;

import com.edev.emall.authority.service.UserService;
import com.edev.emall.customer.entity.*;
import com.edev.emall.customer.service.*;
import com.edev.emall.security.utils.SecurityHelper;
import com.edev.support.entity.ResultSet;
import com.edev.support.exception.ValidException;
import com.edev.support.query.QueryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;
import java.util.Map;
import java.util.Objects;

@RestController
@RequestMapping("customer")
public class CustomerController {
    @Autowired
    private CustomerService service;
    @Autowired
    private UserService userService;
    @Autowired
    private SecurityHelper securityHelper;
    @Value("${security.passwordEncoder}")
    private String passwordEncoder;
    private void encodePassword(com.edev.emall.authority.entity.Customer customer) {
        String password = String.format("{%s}%s",passwordEncoder,customer.getPassword());
        customer.setPassword(password);
    }
    @PostMapping("register")
    public Long register(@RequestBody com.edev.emall.authority.entity.Customer customer) {
        encodePassword(customer);
        return userService.register(customer);
    }
    @PostMapping("modify")
    @PreAuthorize("hasAuthority('customer')")
    public void modify(@RequestBody Customer customer) {
        if(!Objects.equals(securityHelper.getCurrentUser().getId(), customer.getId()))
            throw new ValidException("Just modify self information only!");
        service.modify(customer);
    }
    @GetMapping("remove")
    @PreAuthorize("hasAuthority('customer')")
    public void remove(Long customerId) {
        if(!Objects.equals(securityHelper.getCurrentUser().getId(), customerId))
            throw new ValidException("Just remove self information only!");
        userService.remove(customerId);
    }
    @GetMapping("load")
    @PreAuthorize("hasAuthority('customer')")
    public Customer load(Long customerId) {
        return service.load(customerId);
    }
    @Autowired @Qualifier("customerQry")
    private QueryService queryService;
    @PostMapping("query")
    public ResultSet query(@RequestBody Map<String, Object> params) {
        return queryService.query(params);
    }
    @Autowired
    private CountryService countryService;
    @GetMapping("loadAllCountry")
    public Collection<Country> loadAllCountry() {
        return countryService.loadAll();
    }
    @Autowired
    private ProvinceService provinceService;
    @GetMapping("loadAllProvince")
    public Collection<Province> loadAllProvince() {
        return provinceService.loadAll();
    }
    @Autowired
    private CityService cityService;
    @GetMapping("loadAllCity")
    public Collection<City> loadAllCity() {
        return cityService.loadAll();
    }
    @Autowired
    private DistrictService districtService;
    @GetMapping("loadAllDistrict")
    public Collection<District> loadAllDistrict() {
        return districtService.loadAll();
    }
}
