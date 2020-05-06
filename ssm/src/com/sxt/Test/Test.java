package com.sxt.Test;

import com.sxt.entity.Student;
import com.sxt.service.StudentService;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
    import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext-*.xml"})
public class Test {
    @Autowired
    private StudentService studentService;

    @org.junit.Test
    public void query(){
        List<Student> query = studentService.query();
        System.out.println(query);
    }
    @org.junit.Test
    public void queryById(){
        Student student = this.studentService.queryById(17);
        System.out.println(student);
    }
    @org.junit.Test
    public void update(){
        Student student =new Student();
        student.setId(17);
        student.setAddress("蜀山");
        student.setName("李逍遥");
        student.setTime("2020-20-20");
        this.studentService.update(student);
    }
    @org.junit.Test
    public void delete(){
       this.studentService.delete(16);
    }
    @org.junit.Test
    public void add(){
        Student student =new Student();
        student.setAddress("蜀山");
        student.setName("胡歌");
        student.setTime("2020-20-20");
        this.studentService.add(student);
    }

    @org.junit.Test
    public void page(){
//        Page<Object> page = PageHelper.startPage(2, 2);
//        StudentMapper
//        List<Student> emps = studentMapper.query();
//        emps.stream().forEach(System.out::println);
//
//        System.out.println("当前页码："+page.getPageNum());
//        System.out.println("总记录数："+page.getTotal());
//        System.out.println("每页的记录数："+page.getPageSize());
//        System.out.println("总页码："+page.getPages());
    }
}
