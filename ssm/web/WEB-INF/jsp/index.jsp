
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <title>This is index Page</title>
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/assets/i/app-icon72x72@2x.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/app.css">
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/amazeui.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>

</head>

<body data-type="login">
<script src="${pageContext.request.contextPath}/assets/js/theme.js"></script>
<div class="am-g tpl-g">
<%--    <!-- 风格切换 -->--%>
<%--    <div class="tpl-skiner">--%>
<%--        <div class="tpl-skiner-toggle am-icon-cog">--%>
<%--        </div>--%>
<%--        <div class="tpl-skiner-content">--%>
<%--            <div class="tpl-skiner-content-title">--%>
<%--                选择主题--%>
<%--            </div>--%>
<%--            <div class="tpl-skiner-content-bar">--%>
<%--                <span class="skiner-color skiner-white" data-color=""></span>--%>
<%--                <span class="skiner-color skiner-black" data-color="theme-black"></span>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
    <div class="tpl-login">
        <div class="tpl-login-content">
            <div class="tpl-login-logo">

            </div>



            <form class="am-form tpl-form-line-form" action="${pageContext.request.contextPath}/login.html" method="post">
                <div class="am-form-group">
                    <input type="text" class="tpl-form-input"  placeholder="请输入账号" name="name">
                </div>
                <div class="am-form-group">
                    <input type="text" class="tpl-form-input"  placeholder="请输入账号" name="password">
                </div>
                <div class="am-form-group">
                    <label anme="msg" style="color: indianred;text-align: center">${msg}</label>
                </div>
                <div class="am-form-group tpl-login-remember-me">
                    <input id="remember-me" type="checkbox">
                    <label for="remember-me">
                        记住密码
                    </label>
                </div>
                <div class="am-form-group">
                    <button type="submit" class="am-btn am-btn-primary  am-btn-block tpl-btn-bg-color-success  tpl-login-btn">提交</button>
                </div>
            </form>
        </div>
    </div>
</div>


</body>

</html>
<script>
    $(function () {

    })
    <%--function del(id){--%>
    <%--    if(confirm("是否确定要删除?")){--%>
    <%--        location.href="${pageContext.request.contextPath}/student/delete?id="+id;--%>
    <%--    }--%>
    <%--}--%>
    // $.ajax({
    //     url:"",
    //     type:"post",
    //     dataType:"json",
    //     data:"{\"id\":10,\"name\":\"格雷\",\"sal\":8000,\"time\":1583596800000}",
    //     success:function(result){
    //         alert(result.toString())
    //     }
    // })
</script>