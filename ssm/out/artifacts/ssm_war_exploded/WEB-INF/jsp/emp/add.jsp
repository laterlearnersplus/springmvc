<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2020-01-05
  Time: 14:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>This is student add page</title>
    <meta name="description" content="这是一个student表单页面">
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
<script src="${pageContext.request.contextPath}/assets/js/theme.js"></script>
<div class="tpl-content-wrapper" style="margin: 0px auto">

    <div class="container-fluid am-cf">
        <div class="row">
            <div class="am-u-sm-12 am-u-md-12 am-u-lg-9">
                <div class="page-header-heading"><span class="am-icon-home page-header-heading-icon"></span> 新增 <small>Amaze UI</small></div>
                <p class="page-header-description">Amaze UI 有许多不同的表格可用。</p>
            </div>
            <div class="am-u-lg-3 tpl-index-settings-button">
                <button type="button" class="page-header-button"><span class="am-icon-paint-brush"></span> 设置</button>
            </div>
        </div>

    </div>

    <div class="row-content am-cf">
        <div class="row">
            <div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
                <div class="widget am-cf">
                    <div class="widget-head am-cf">
                        <div class="widget-title am-fl">新增表单</div>
                        <div class="widget-function am-fr">
                            <a href="javascript:;" class="am-icon-cog"></a>
                        </div>
                    </div>
                    <div class="widget-body am-fr">

                        <form class="am-form tpl-form-border-form tpl-form-border-br" action="${pageContext.request.contextPath}/emp" method="post">
                            <div class="am-form-group">
                                <label  class="am-u-sm-3 am-form-label">名字 <span class="tpl-form-line-small-title">name</span></label>
                                <div class="am-u-sm-9">
                                    <input type="text" class="tpl-form-input" name="name" />
                                </div>
                            </div>

                            <div class="am-form-group">
                                <label  class="am-u-sm-3 am-form-label">入职时间 <span class="tpl-form-line-small-title">time</span></label>
                                <div class="am-u-sm-9">
                                    <input type="date" name="time">
<%--                                    <s:date format="yyyy-MM-dd" name=""/>--%>
                                </div>
                            </div>

                            <div class="am-form-group">
                                <label  class="am-u-sm-3 am-form-label">工资 <span class="tpl-form-line-small-title">sal</span></label>
                                <div class="am-u-sm-9">
                                    <input type="text" class="am-form-field tpl-form-no-bg" name="sal">
                                </div>
                            </div>

                            <div class="am-form-group">
                                <label  class="am-u-sm-3 am-form-label">部门 <span class="tpl-form-line-small-title">dept</span></label>
                                <div class="am-u-sm-9">
                                    <select data-am-selected="{btnSize: 'sm'}" name="dept.id" id="div1">
                                        <c:forEach items="${depts}" var="dept" varStatus="status">
                                            <option value="${dept.id}">${dept.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>

                            <div class="am-form-group">
                                <div class="am-u-sm-9 am-u-sm-push-3">
                                    <button type="submit" class="am-btn am-btn-primary tpl-btn-bg-color-success ">提交</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<script src="${pageContext.request.contextPath}/assets/js/amazeui.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/amazeui.datatables.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/dataTables.responsive.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/app.js"></script>

</body>

</html>
<script>
    // $(function () {
    //     $.ajax({
    //         url:"emp/find",
    //         success:function(result){
    //             alert(result)
    //         }});
    // })

</script>