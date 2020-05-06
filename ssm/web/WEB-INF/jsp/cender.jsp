<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2020/3/17
  Time: 22:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>This is img page</title>
    <meta name="description" content="这是一个中间图片展示页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="../../assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="../../assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <script src="${pageContext.request.contextPath}/assets/js/echarts.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/app.css">
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    <style>
        #divs{
            width: 100%;
            height: 730px;
            margin: 0px auto;
            background: url("${pageContext.request.contextPath}/assets/img/2.jpg")no-repeat center fixed;
        }
        .container-fluid{
            height: 80px;
        }
    </style>

</head>

<body>
<div id="divs">
    <div class="am-g tpl-g" >
        <!--        更换主题-->
        <div class="tpl-skiner" >
            <div class="tpl-skiner-toggle am-icon-cog">
            </div>
            <div class="tpl-skiner-content">
                <div class="tpl-skiner-content-title">选择主题</div>
                <div class="tpl-skiner-content-bar">
                    <span class="skiner-color skiner-white" data-color="theme-white"></span>
                    <span class="skiner-color skiner-black" data-color="theme-black"></span>
                </div>
            </div>
        </div>
        <!-- 内容区域 -->
        <div>
            <!--                内容区域头部-->
            <div class="container-fluid am-cf">
                <div class="am-u-sm-5 am-u-md-12 am-u-lg-9" style="margin-top: -25px">
                    <div class="page-header-heading"><span class="am-icon-home page-header-heading-icon"></span> 我的首页 <small>Amaze UI</small></div>
                    <p class="page-header-description">Amaze UI 含近 20 个 CSS 组件、20 余 JS 组件，更有多个包含不同主题的 Web 组件。</p>
                </div>
                <div class="am-u-lg-3 tpl-index-settings-button" style="margin-top: -25px">
                    <button type="button" class="page-header-button"><span class="am-icon-paint-brush"></span> 设置</button>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/assets/js/theme.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/amazeui.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/amazeui.datatables.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/dataTables.responsive.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/app.js"></script>

</body>

</html>