package com.sxt.Test.Factory.FactoryModel;

public class OppoPhone implements Phone {
    @Override
    public void make() {
        System.out.println("OPPO Find X2");
    }
}
