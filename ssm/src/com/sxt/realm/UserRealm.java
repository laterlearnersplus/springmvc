package com.sxt.realm;

import com.sxt.entity.User;
import com.sxt.mapper.UserMapper;
import com.sxt.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class UserRealm extends AuthorizingRealm {
    @Autowired
    private UserService userService;

    //授权
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        System.out.println("============授权方法启动==============");
        return null;
    }

    //认证
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        System.out.println("===========认证方法启动==============");
        UsernamePasswordToken token = (UsernamePasswordToken)authenticationToken;
        String name = token.getUsername();//拿到页面的username
        System.out.println("页面返回的名字："+name);
        User user = this.userService.queryByName(name);//数据库查询结果返回
        System.out.println("数据库返回的user:"+user);
        //获取到盐值
        ByteSource salt = ByteSource.Util.bytes(name);
        System.out.println("salt:"+salt);
        AuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(user,
                                                         user.getPassword(),
                                                         salt,
                                                        "casual");
        return authenticationInfo;
    }
}


