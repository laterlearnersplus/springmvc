package com.sxt.service.impl;


import com.sxt.mapper.DeptMapper;
import com.sxt.entity.Dept;
import com.sxt.service.DeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class DeptServiceImpl implements DeptService {
	@Autowired
	private DeptMapper deptMapper;

	@Override
	public void add(Dept dept) {

	}

	@Override
	public void delete(Integer id) {

	}

	@Override
	public Dept queryById(Integer id) {
		return this.deptMapper.queryById(id);
	}

	@Override
	public List<Dept> query() {
		return this.deptMapper.query();
	}

	@Override
	public void update(Dept dept) {

	}

}
