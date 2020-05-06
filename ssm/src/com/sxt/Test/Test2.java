package com.sxt.Test;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.sxt.dto.EmpDto;
import com.sxt.entity.Emp;
import com.sxt.service.EmpService;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext-*.xml"})
public class Test2 {
    @Autowired
    private EmpService empService;

    @Test
    public void query(){
        EmpDto empDto = new EmpDto();
        List<Emp> query = this.empService.query(empDto);
        System.out.println(query);

    }
    @Test
    public void queryById(){
        Emp emp = this.empService.queryById(1);
        System.out.println(emp);
    }
    @Test
    public void update() throws Exception{
        Emp query = this.empService.queryById(10);
        JSON json = (JSON) JSONArray.toJSON(query);
        System.out.println(json);
    }

    @Test
    public void md5(){
        String hashAlgorithmName = "MD5";
        Object credentials = "a123";
        Object salt = ByteSource.Util.bytes("root");;
        Object result = new SimpleHash(hashAlgorithmName, credentials, salt, 1024);
        System.out.println(result);
    }
}
