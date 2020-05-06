package com.sxt.entity;

import java.util.Date;

/**
 * 角色
 */
public class User {
    private int id;
    private String name;//名字
    private String password;//密码
    private String state;//状态
    private Date createTime;//状态

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", state='" + state + '\'' +
                ", createTime=" + createTime +
                '}';
    }

    public User() {
    }

    public User(int id, String name, String password, String state, Date createTime) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.state = state;
        this.createTime = createTime;
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}
