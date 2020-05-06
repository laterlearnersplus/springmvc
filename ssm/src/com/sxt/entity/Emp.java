package com.sxt.entity;


import java.util.Date;


public class Emp {

	private Integer id;
	private String name;
	private Date time;
	private double sal;
	private Dept dept;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public double getSal() {
		return sal;
	}

	public void setSal(double sal) {
		this.sal = sal;
	}

	public Dept getDept() {
		return dept;
	}

	public void setDept(Dept dept) {
		this.dept = dept;
	}

	@Override
	public String toString() {
		return "Emp{" +
				"id=" + id +
				", name='" + name + '\'' +
				", time=" + time +
				", sal=" + sal +
				", dept=" + dept +
				'}';
	}

	public Emp() {
	}

	public Emp(Integer id, String name, Date time, double sal, Dept dept) {
		this.id = id;
		this.name = name;
		this.time = time;
		this.sal = sal;
		this.dept = dept;
	}




}
