package com.sxt.Test.Factory.FactoryModel;

/**
 * 工厂模式测试
 */
public class TestFactoryModel {
    public static void main(String[] args) {
        PhoneFactory phoneFactory = new PhoneFactory();
        Phone iPhone = phoneFactory.makePhone("IPhone");
        iPhone.make();
        Phone hwPhone = phoneFactory.makePhone("HWPhone");
        hwPhone.make();
    }
}
