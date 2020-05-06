package com.sxt.Test.Factory.FactoryModel;

/**
 * 工厂模式
 */
public class PhoneFactory {
    public Phone makePhone(String phoneType){
        if(phoneType.equalsIgnoreCase("HWPhone")){
            return new HWPhone();
        }else if(phoneType.equalsIgnoreCase("OppoPhone")){
            return new OppoPhone();
        }else if(phoneType.equalsIgnoreCase("IPhone")){
            return new IPhone();
        }
        return null;
    }
}
