package com.edev.emall;

import com.edev.emall.authority.service.AuthorityService;
import com.edev.emall.authority.service.RoleService;
import com.edev.emall.authority.service.UserService;
import com.edev.emall.authority.service.impl.AuthorityServiceImpl;
import com.edev.emall.authority.service.impl.RoleServiceImpl;
import com.edev.emall.authority.service.impl.UserServiceImpl;
import com.edev.emall.customer.service.*;
import com.edev.emall.customer.service.impl.*;
import com.edev.emall.inventory.service.InventoryRecordService;
import com.edev.emall.inventory.service.InventoryService;
import com.edev.emall.inventory.service.impl.InventoryRecordServiceImpl;
import com.edev.emall.inventory.service.impl.InventoryServiceImpl;
import com.edev.emall.order.service.DiscountService;
import com.edev.emall.order.service.OrderService;
import com.edev.emall.order.service.PaymentService;
import com.edev.emall.order.service.impl.DiscountServiceImpl;
import com.edev.emall.order.service.impl.OrderServiceImpl;
import com.edev.emall.order.service.impl.PaymentServiceImpl;
import com.edev.emall.product.service.BrandService;
import com.edev.emall.product.service.ProductCategoryService;
import com.edev.emall.product.service.ProductService;
import com.edev.emall.product.service.impl.BrandServiceImpl;
import com.edev.emall.product.service.impl.ProductCategoryServiceImpl;
import com.edev.emall.product.service.impl.ProductServiceImpl;
import com.edev.emall.supplier.service.StaffService;
import com.edev.emall.supplier.service.SupplierService;
import com.edev.emall.supplier.service.impl.StaffServiceImpl;
import com.edev.emall.supplier.service.impl.SupplierServiceImpl;
import com.edev.emall.vip.service.PointsRuleService;
import com.edev.emall.vip.service.UpgradeRuleService;
import com.edev.emall.vip.service.VipService;
import com.edev.emall.vip.service.impl.PointsRuleServiceImpl;
import com.edev.emall.vip.service.impl.UpgradeRuleServiceImpl;
import com.edev.emall.vip.service.impl.VipServiceImpl;
import com.edev.support.dao.BasicDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class OrmConfig {
    @Autowired @Qualifier("basicDao")
    private BasicDao basicDao;
    @Autowired @Qualifier("basicDaoWithCache")
    private BasicDao basicDaoWithCache;
    @Autowired @Qualifier("repository")
    private BasicDao repository;
    @Autowired @Qualifier("repositoryWithCache")
    private BasicDao repositoryWithCache;
    @Bean
    public UserService user() {
        return new UserServiceImpl(repository);
    }
    @Bean
    public RoleService role() {
        return new RoleServiceImpl(repository);
    }
    @Bean
    public AuthorityService authority() {
        return new AuthorityServiceImpl(repository);
    }
    @Bean
    public CustomerService customer() {
        return new CustomerServiceImpl(repositoryWithCache);
    }
    @Bean
    public AccountService account() {
        return new AccountServiceImpl(repository);
    }
    @Bean
    public JournalAccountService journalAccount() {
        return new JournalAccountServiceImpl(basicDao);
    }
    @Bean
    public CountryService country() {
        return new CountryServiceImpl(basicDaoWithCache);
    }
    @Bean
    public ProvinceService province() {
        return new ProvinceServiceImpl(basicDaoWithCache);
    }
    @Bean
    public CityService city() {
        return new CityServiceImpl(basicDaoWithCache);
    }
    @Bean
    public DistrictService district() {
        return new DistrictServiceImpl(basicDaoWithCache);
    }
    @Bean
    public VipService vip() {
        return new VipServiceImpl(repository);
    }
    @Bean
    public PointsRuleService pointsRule() {
        return new PointsRuleServiceImpl(basicDaoWithCache);
    }
    @Bean
    public UpgradeRuleService upgradeRule() {
        return new UpgradeRuleServiceImpl(basicDaoWithCache);
    }
    @Bean
    public ProductService product() {
        return new ProductServiceImpl(repositoryWithCache);
    }
    @Bean
    public ProductCategoryService productCategory() {
        return new ProductCategoryServiceImpl(basicDaoWithCache);
    }
    @Bean
    public BrandService brand() {
        return new BrandServiceImpl(basicDaoWithCache);
    }
    @Bean
    public SupplierService supplier() {
        return new SupplierServiceImpl(repositoryWithCache);
    }
    @Bean
    public StaffService staff() {
        return new StaffServiceImpl(repository);
    }
    @Bean
    public InventoryService inventory() {
        return new InventoryServiceImpl(basicDao);
    }
    @Bean
    public InventoryRecordService inventoryRecord() {
        return new InventoryRecordServiceImpl(basicDao);
    }
    @Bean
    public OrderService order() {
        return new OrderServiceImpl(repository);
    }
    @Bean
    public DiscountService discount() {
        return new DiscountServiceImpl(repository);
    }
}
