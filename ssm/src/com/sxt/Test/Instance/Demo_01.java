package com.sxt.Test.Instance;

/**
 * 静态内部类（推荐使用）
 */
public class Demo_01 {
    private Demo_01(){}
    private static class Demo_01Instance{
        private static final Demo_01 INSTANCE = new Demo_01();
    }
    public static Demo_01 getInstance(){
        return Demo_01Instance.INSTANCE;
    }
}
