package com.sxt.controller;


import com.sxt.service.DeptService;
import com.sxt.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

@Controller("deptController")
@Scope(value = "prototype")
public class DeptController  {

    @Autowired
    private DeptService deptService;
//    public String add(){
//        return this.SUCCESS;
//    }
//    public String update(){
//        return this.SUCCESS;
//    }
//    public String delete(){
//        return this.SUCCESS;
//    }
//    public String query(){
//        this.deptService.query();
//        return this.SUCCESS;
//    }
	
}
