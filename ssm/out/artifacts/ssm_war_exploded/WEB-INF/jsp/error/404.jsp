<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>This is error page</title>
    <meta name="description" content="这是一个错误页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <script src="${pageContext.request.contextPath}/assets/js/echarts.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/app.css">
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>

</head>

<body>
<!-- 内容区域 -->
<div class="tpl-content-wrapper" style="margin: 0px auto">
    <div class="row-content am-cf">
        <div class="widget am-cf">
            <div class="widget-body">
                <div class="tpl-page-state">
                    <div class="tpl-page-state-title am-text-center tpl-error-title">404</div>
                    <div class="tpl-error-title-info">Page Not Found</div>
                    <div class="tpl-page-state-content tpl-error-content">
                        <p>对不起,没有找到您所需要的页面,可能是URL不确定,或者页面已被移除。</p>
                        <button type="button" class="am-btn am-btn-secondary am-radius tpl-error-btn" id="backHome">Back Home</button></div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/assets/js/theme.js"></script>
<script src=".${pageContext.request.contextPath}/assets/js/amazeui.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/amazeui.datatables.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/dataTables.responsive.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/app.js"></script>

</body>

</html>
<script>
    $("#backHome").click(function () {
        $(window).attr('location',"${pageContext.request.contextPath }/main.html");
    })
</script>