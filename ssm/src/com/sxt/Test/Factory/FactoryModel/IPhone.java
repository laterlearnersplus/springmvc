package com.sxt.Test.Factory.FactoryModel;

public class IPhone implements Phone {
    @Override
    public void make() {
        System.out.println("苹果 11 plus");
    }
}
