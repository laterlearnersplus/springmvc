package com.sxt.mapper;

import com.sxt.dto.EmpDto;
import com.sxt.entity.Emp;

import java.util.List;

public interface EmpMapper {
    public void add(Emp emp);
    public void delete(Integer id);
    public void update(Emp emp);
    public Emp queryById(Integer id);
    public List<Emp> query(EmpDto empDto);
}
