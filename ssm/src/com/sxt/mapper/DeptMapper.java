package com.sxt.mapper;


import com.sxt.entity.Dept;

import java.util.List;

public interface DeptMapper {
    public void add(Dept dept);
    public void delete(Integer id);
    public void update(Dept dept);
    public Dept queryById(Integer id);
    public List<Dept> query();
}
