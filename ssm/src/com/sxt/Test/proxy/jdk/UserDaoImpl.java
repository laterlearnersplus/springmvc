package com.sxt.Test.proxy.jdk;

public class UserDaoImpl implements UserDao {
    @Override
    public void add() {
        System.out.println("====user add executor====");
    }
}
