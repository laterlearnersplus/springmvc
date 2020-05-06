package com.sxt.Test.Factory.FactoryModel;

public class HWPhone implements Phone {
    @Override
    public void make() {
        System.out.println("华为荣耀30");
    }
}
