package com.sxt.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.sxt.entity.Student;
import com.sxt.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.xml.ws.RequestWrapper;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

@Controller
public class StudentController{
    private static final int  PAGE_SIZE = 4;
    @Autowired
    private StudentService studentService;

    @RequestMapping("/student/beforeAdd.html")
    public String beforeAdding() throws Exception{//添加方法之前
        int i=5/0;
        return "student/add";
    }

    @RequestMapping("/student/add.html")
    public String add(Student student) throws Exception{
        System.out.println("页面获取学生------------------》："+student);
        studentService.add(student);
        return "redirect:/student/query.html";
    }
    @RequestMapping("/student/delete.html")
    public String delete(int id) throws Exception{
        this.studentService.delete(id);
        return "redirect:/student/query";
    }

    @RequestMapping("/student/update.html")
    public String update(int id,Map map) throws Exception{
        Student student = studentService.queryById(id);
        System.out.println("=============查询==================="+student);
        map.put("student",student);
        return "/student/student-update";
    }

    @RequestMapping("/student/query.html")
    public String query(@RequestParam(value="currentPage",required=false,defaultValue="0")Integer currentPage, Map map) throws Exception{

        if(currentPage<=0){
            currentPage=1;
        }
        if(currentPage>pageTotal()){
            currentPage=pageTotal();
        }
        Page<Object> page = PageHelper.startPage(currentPage,PAGE_SIZE );
        List<Student> students = this.studentService.query();
        map.put("students",students);
        map.put("currentPage",currentPage);
        return "student/student-query-list";
    }

    public int pageTotal() throws Exception{//查询总页数
        Page<Object> page = PageHelper.startPage(0, PAGE_SIZE);
        List<Student> students = this.studentService.query();
        return page.getPages();
    }


//    @RequestMapping("/student/add.html")
//    public String save(){
//        return "student/student-query-list";
//    }

}
