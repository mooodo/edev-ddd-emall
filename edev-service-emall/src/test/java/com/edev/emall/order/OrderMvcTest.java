package com.edev.emall.order;

import com.edev.support.utils.JsonFile;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@RunWith(SpringRunner.class)
@SpringBootTest
@AutoConfigureMockMvc
public class OrderMvcTest {
    @Autowired
    private MockMvc mvc;
    /*
    1. 初始化
    2. 创建订单，同时保存订单明细
    3. 更新订单，同时比较并增删改订单明细
    4. 删除订单，同时删除订单明细
     */
    @Test
    public void testCreateAndModifyOrder() throws Exception {
        String id = "1";
        String json0 = JsonFile.read("json/order/order00.json");
        String excepted0 = JsonFile.read("json/order/excepted00.json");
        // init test
        mvc.perform(get("/orm/order/remove")
                .param("orderId", id)
        ).andExpect(status().isOk());

        // test create order
        mvc.perform(post("/orm/order/create")
                .content(json0).contentType(MediaType.APPLICATION_JSON)
        ).andExpect(status().isOk()).andExpect(content().string(id));
        mvc.perform(get("/orm/order/load")
                .param("orderId", id)
        ).andExpect(status().isOk()).andExpect(content().json(excepted0));

        // test modify product
        String json1 = JsonFile.read("json/order/order01.json");
        String excepted1 = JsonFile.read("json/order/excepted01.json");
        mvc.perform(post("/orm/order/modify")
                .content(json1).contentType(MediaType.APPLICATION_JSON)
        ).andExpect(status().isOk());
        mvc.perform(get("/orm/order/load")
                .param("orderId", id)
        ).andExpect(status().isOk()).andExpect(content().json(excepted1));

        // test remove
        mvc.perform(get("/orm/order/remove")
                .param("orderId", id)
        ).andExpect(status().isOk());
        mvc.perform(get("/orm/order/load")
                .param("orderId", id)
        ).andExpect(status().isOk()).andExpect(content().string(""));
    }
}
