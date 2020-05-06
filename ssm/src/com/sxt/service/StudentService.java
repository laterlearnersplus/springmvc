package com.sxt.service;

import com.sxt.entity.Student;

import java.util.List;

public interface StudentService {
    public List<Student> query();//查询全部
    public void add(Student student);//增加
    public void delete(int id);//删除
    public void update(Student student);//修改
    public Student queryById(int id);//查询单个
}
