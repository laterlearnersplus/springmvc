package com.sxt.service.impl;


import com.sxt.dto.EmpDto;
import com.sxt.mapper.EmpMapper;
import com.sxt.entity.Emp;
import com.sxt.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmpServiceImpl implements EmpService {
	@Autowired
	private EmpMapper empMapper;

	@Override
	public void add(Emp emp) {
		this.empMapper.add(emp);
	}

	@Override
	public void delete(Integer id) {
		this.empMapper.delete(id);
	}

	@Override
	public Emp queryById(Integer id) {
		return this.empMapper.queryById(id);
	}

	@Override
	public List<Emp> query(EmpDto empDto) {
		return this.empMapper.query(empDto);
	}

	@Override
	public void update(Emp emp) {
		this.empMapper.update(emp);
	}

}
