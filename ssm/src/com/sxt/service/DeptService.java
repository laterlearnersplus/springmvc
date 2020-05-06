package com.sxt.service;


import com.sxt.entity.Dept;

import java.util.List;

public interface DeptService {
	public void add(Dept dept);
	public void delete(Integer id);
	public Dept queryById(Integer id);
	public List<Dept> query();
	public void update(Dept dept);
}
