package com.sxt.Test.Instance;

/**
 * 双重检查（推荐使用）
 */
public class Demo_02 {

        private static volatile Demo_02 demo_02;

        private Demo_02() {}

        public static Demo_02 getInstance() {
            if (demo_02 == null) {
                synchronized (Demo_02.class) {
                    if (demo_02 == null) {
                        demo_02 = new Demo_02();
                    }
                }
            }
            return demo_02;
        }
    }
