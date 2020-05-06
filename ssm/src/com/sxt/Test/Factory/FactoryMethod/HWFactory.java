package com.sxt.Test.Factory.FactoryMethod;

import com.sxt.Test.Factory.FactoryModel.HWPhone;

public class HWFactory implements PhoneFactory{

    @Override
    public HWPhone makePhone() {
        return new HWPhone();
    }
}
