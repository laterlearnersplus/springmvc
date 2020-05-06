package com.sxt.Test.Factory.FactoryMethod;

import com.sxt.Test.Factory.FactoryModel.HWPhone;
import com.sxt.Test.Factory.FactoryModel.OppoPhone;

public class Test {
    public static void main(String[] args) {
        HWFactory hwFactory = new HWFactory();
        HWPhone hwPhone = hwFactory.makePhone();
        hwPhone.make();

        OppoFactory oppoFactory = new OppoFactory();
        OppoPhone oppoPhone =oppoFactory.makePhone();
        oppoPhone.make();
    }
}
