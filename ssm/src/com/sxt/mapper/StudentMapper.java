package com.sxt.mapper;

import com.sxt.entity.Student;

import java.util.List;

public interface StudentMapper {
    public List<Student> query();//查询全部
    public Student queryById(int id);//查询单个
    public void update(Student student);//修改
    public void delete(int id);//删除
    public void add(Student student);//增加
}
