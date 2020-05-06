package com.sxt.Test.Factory.FactoryMethod;

import com.sxt.Test.Factory.FactoryModel.OppoPhone;

public class OppoFactory implements PhoneFactory{

    @Override
    public OppoPhone makePhone() {
        return new OppoPhone();
    }
}
