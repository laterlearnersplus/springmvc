package com.sxt.controller;

import com.sxt.entity.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;

@Controller
public class UserController {

    @RequestMapping(value = "/login.html",method = RequestMethod.POST)
    public String login(User user,Map map){
        System.out.println("================User Controller Start!====================");
        System.out.println(user);
        UsernamePasswordToken token = new UsernamePasswordToken(user.getName(),user.getPassword());
        Subject subject = SecurityUtils.getSubject();
        try {
            subject.login(token);
        }catch (Exception e){
            e.printStackTrace();
            map.put("msg","用户名密码输入错误~");
            return "index";//登陆失败
        }
        return "redirect:/main.html";
    }
}

