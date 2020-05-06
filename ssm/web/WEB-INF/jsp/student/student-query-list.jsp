<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2020-01-04
  Time: 12:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>This is student query page</title>
    <meta name="description" content="这是一个 student query 页面">
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
<!--    style="border: 1px solid red"-->
<div class="tpl-content-wrapper" style="margin: 0px auto">
    <div class="row-content am-cf" >
        <div class="row" >
            <div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
                <div class="widget am-cf">
                    <div class="widget-head am-cf">
                        <div class="widget-title  am-cf">查询信息列表</div>

                    </div>
                    <div class="widget-body  am-fr">

                        <div class="am-u-sm-12 am-u-md-6 am-u-lg-6">
                            <div class="am-form-group">
                                <div class="am-btn-toolbar">
                                    <div class="am-btn-group am-btn-group-xs">
                                        <button type="button" class="am-btn am-btn-default am-btn-success"><a href="${pageContext.request.contextPath}/student/beforeAdd.html"><span class="am-icon-plus"></span> 新增</a></button>
                                        <button type="button" class="am-btn am-btn-default am-btn-secondary"><span class="am-icon-save"></span> 保存</button>
                                        <button type="button" class="am-btn am-btn-default am-btn-warning"><span class="am-icon-archive"></span> 审核</button>
                                        <button type="button" class="am-btn am-btn-default am-btn-danger"><span class="am-icon-trash-o"></span> 删除</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="am-u-sm-12 am-u-md-6 am-u-lg-3">
                            <div class="am-form-group tpl-table-list-select">
                                <select data-am-selected="{btnSize: 'sm'}">
                                    <option value="option1">所有类别</option>
                                    <option value="option2">IT业界</option>
                                    <option value="option3">数码产品</option>
                                    <option value="option3">笔记本电脑</option>
                                    <option value="option3">平板电脑</option>
                                    <option value="option3">只能手机</option>
                                    <option value="option3">超极本</option>
                                </select>
                            </div>
                        </div>
                        <div class="am-u-sm-12 am-u-md-12 am-u-lg-3">
                            <div class="am-input-group am-input-group-sm tpl-form-border-form cl-p">
                                <input type="text" class="am-form-field ">
                                <span class="am-input-group-btn">
                                    <button class="am-btn  am-btn-default am-btn-success tpl-table-list-field am-icon-search" type="button"></button>
                                </span>
                            </div>
                        </div>

                        <div class="am-u-sm-12">
                            <table width="100%" class="am-table am-table-compact am-table-striped tpl-table-black " id="example-r">
                                <thead>
                                <tr>
                                    <th>序号</th>
                                    <th>学号</th>
                                    <th>名字</th>
                                    <th>地址</th>
                                    <th>入学时间</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${students}" var="student" varStatus="status">
                                    <c:choose>
                                        <c:when test="${status.count % 2 == 0}">
                                            <tr class="gradeX">
                                                <td>${status.count}</td>
                                                <td>${student.id}</td>
                                                <td>${student.name}</td>
                                                <td>${student.address}</td>
                                                <td>${student.time}</td>
                                                <td>
                                                    <div class="tpl-table-black-operation">
                                                        <a href="student/update?id=${student.id}">
                                                            <i class="am-icon-pencil"></i> 编辑
                                                        </a>
                                                        <a href="student/delete?id=${student.id}" class="tpl-table-black-operation-del">
                                                            <i class="am-icon-trash"></i> 删除
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>
                                        </c:when>
                                        <c:otherwise>
                                            <tr class="even gradeC">
                                                <td>${status.count}</td>
                                                <td>${student.id}</td>
                                                <td>${student.name}</td>
                                                <td>${student.address}</td>
                                                <td>${student.time}</td>
                                                <td>
                                                    <div class="tpl-table-black-operation">
                                                        <a href="student/update?id=${student.id}">
                                                            <i class="am-icon-pencil"></i> 编辑
                                                        </a>
                                                        <a href="student/delete?id=${student.id}" class="tpl-table-black-operation-del">
                                                            <i class="am-icon-trash"></i> 删除
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>
                                        </c:otherwise>
                                    </c:choose>

                                </c:forEach>

                                </tbody>
                            </table>
                        </div>
                        <div class="am-u-lg-12 am-cf">

                            <div class="am-fr">
                                <ul class="am-pagination tpl-pagination">
                                    <input type="hidden" value="${currentPage}" name="currentPage">
                                    <li><a href="query.html?currentPage=${currentPage-1}">«</a></li>
                                    <li class="am-active"><a href="query.html?currentPage=1">1</a></li>
                                    <li><a href="query.html?currentPage=2">2</a></li>
                                    <li><a href="query.html?currentPage=3">3</a></li>
                                    <li><a href="query.html?currentPage=4">4</a></li>
                                    <li><a href="query.html?currentPage=5">5</a></li>
                                    <li><a href="query.html?currentPage=${currentPage+1}">»</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
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

