package com.sxt.service.impl;

import com.sxt.mapper.StudentMapper;
import com.sxt.entity.Student;
import com.sxt.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentMapper studentMapper;

    @Override
    public List<Student> query() {
        return this.studentMapper.query();
    }

    @Override
    public Student queryById(int id) {
        return studentMapper.queryById(id);
    }

    @Override
    public void add(Student student) {
        this.studentMapper.add(student);
    }

    @Override
    public void delete(int id) {
        this.studentMapper.delete(id);
    }

    @Override
    public void update(Student student) {
        this.studentMapper.update(student);
    }

}
