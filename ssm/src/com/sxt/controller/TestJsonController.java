package com.sxt.controller;

import com.sxt.entity.Emp;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestJsonController {

    @RequestMapping("request")
    @ResponseBody
    public Emp test(){//return 回去的是json
        Emp emp = new Emp();
        emp.setId(10);
        emp.setName("胡歌");
        return emp;
    }

    @RequestMapping("request2")
    @ResponseBody
    public Emp test2(@RequestBody Emp emp1){//return 回去的是json 页面请求穿过来的也是json
        System.out.println(emp1);
        Emp emp = new Emp();
        emp.setId(10);
        emp.setName("胡歌");
        return emp;
    }
}
