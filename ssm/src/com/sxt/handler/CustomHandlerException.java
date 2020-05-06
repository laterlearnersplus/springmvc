package com.sxt.handler;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CustomHandlerException implements HandlerExceptionResolver {
    @Override
    public ModelAndView resolveException(HttpServletRequest httpServletRequest,
                                         HttpServletResponse httpServletResponse,
                                         Object o, Exception e) {
        // 如果是自定义异常，读取异常信息
        String msg = e.getMessage();
        System.out.println("=====异常测试========"+msg);

        //1、记录日志   2、通知相关人员 发送短信或者邮件

        // 返回错误页面，给用户友好页面显示错误信息
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("msg",msg);
        modelAndView.setViewName("error/error");
        return modelAndView;
    }
}
