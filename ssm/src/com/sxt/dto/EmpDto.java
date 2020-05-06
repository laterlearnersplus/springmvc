package com.sxt.dto;

/**
 * 用于多条件查询
 *
 */
public class EmpDto {
    private int id;//emp的id
    private String name;//emp的名字
    private int deptId;//dept的id

    @Override
    public String toString() {
        return "EmpDto{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", deptId=" + deptId +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getDeptId() {
        return deptId;
    }

    public void setDeptId(int deptId) {
        this.deptId = deptId;
    }

    public EmpDto(int id, String name, int deptId) {
        this.id = id;
        this.name = name;
        this.deptId = deptId;
    }

    public EmpDto() {
    }
}
