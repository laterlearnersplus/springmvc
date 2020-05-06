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
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
<style>
    #where1{
        position: absolute;
        left: 55%;
    }
    #where2{
        position: absolute;
        left: 30%;
    }
</style>
</head>

<body>

<!-- 内容区域 -->
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
                                        <button type="button" class="am-btn am-btn-default am-btn-success"><a href="${pageContext.request.contextPath}/emp/beforeAdding.html"><span class="am-icon-plus"></span> 新增</a></button>
                                        <button type="button" class="am-btn am-btn-default am-btn-secondary"><span class="am-icon-save"></span> 保存</button>
                                        <button type="button" class="am-btn am-btn-default am-btn-warning"><span class="am-icon-archive"></span> 审核</button>
                                        <button type="button" class="am-btn am-btn-default am-btn-danger"><span class="am-icon-trash-o"></span> 删除</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <form class="am-form tpl-form-border-form tpl-form-border-br" action="${pageContext.request.contextPath}/emp" method="get">

                            <div id="am-btn-group">


                                <div class="am-u-sm-12 am-u-md-12 am-u-lg-3" id="where1">
                                        <select data-am-selected="{btnSize: 'sm'}" name="deptId">
                                            <option value="99" selected="selected">请选择</option>
                                            <c:forEach items="${depts}" var="dept" varStatus="status">
                                                <option value="${dept.id}">${dept.name}</option>
                                            </c:forEach>
                                        </select>
                                </div>

                                <div class="am-u-sm-12 am-u-md-12 am-u-lg-3" id="where2">
                                    <input type="text" class="am-form-field " name="id" placeholder="请输入雇员编号" id="id">
                                </div>

                                <div class="am-u-sm-12 am-u-md-12 am-u-lg-3">
                                    <div class="am-input-group am-input-group-sm tpl-form-border-form cl-p">
                                        <input type="text" class="am-form-field " name="name" placeholder="请输入名字" value="${empDto.name}">
<%--                                        <input type="text" class="am-form-field " name="name" placeholder="请输入名字">--%>
                                        <span class="am-input-group-btn">
                                           <button class="am-btn  am-btn-default am-btn-success tpl-table-list-field am-icon-search" type="submit" onclick="sub()"></button>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </form>

                        <div class="am-u-sm-12">
                            <table width="100%" class="am-table am-table-compact am-table-striped tpl-table-black " id="example-r">
                                <thead>
                                <tr>
                                    <th>序号</th>
                                    <th>工号</th>
                                    <th>名字</th>
                                    <th>入职时间</th>
                                    <th>工资</th>
                                    <th>部门</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${emps}" var="emp" varStatus="status">
                                    <c:choose>
                                        <c:when test="${status.count % 2 == 0}">
                                            <tr class="gradeX">
                                                <td>${status.count}</td>
                                                <td>${emp.id}</td>
                                                <td>${emp.name}</td>
                                                <td><fmt:formatDate value="${emp.time}" pattern="yyyy-MM-dd"/></td>
                                                <td>${emp.sal}</td>
                                                <td>${emp.dept.name}</td>
                                                <td>
                                                    <div class="tpl-table-black-operation">
                                                        <a href="${pageContext.request.contextPath}/emp/${emp.id}">
                                                            <i class="am-icon-pencil"></i> 编辑
                                                        </a>
                                                        <a href="${pageContext.request.contextPath}/emp/${emp.id}"
                                                           class="tpl-table-black-operation-del" name="delete">
                                                            <i class="am-icon-trash"></i> 删除
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>
                                        </c:when>
                                        <c:otherwise>
                                            <tr class="even gradeC">
                                                <td>${status.count}</td>
                                                <td>${emp.id}</td>
                                                <td>${emp.name}</td>
                                                <td><fmt:formatDate value="${emp.time}" pattern="yyyy-MM-dd"/></td>
                                                <td>${emp.sal}</td>
                                                <td>${emp.dept.name}</td>
                                                <td>
                                                    <div class="tpl-table-black-operation">
                                                        <a href="${pageContext.request.contextPath}/emp/${emp.id}">
                                                            <i class="am-icon-pencil"></i> 编辑
                                                        </a>
                                                        <a href="${pageContext.request.contextPath}/emp/${emp.id}"
                                                           class="tpl-table-black-operation-del" name="delete2">
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
                                    <li><a href="${pageContext.request.contextPath}/emp?currentPage=${currentPage-1}">«</a></li>
                                    <li class="am-active"><a href="${pageContext.request.contextPath}/emp?currentPage=1">1</a></li>
                                    <li><a href="${pageContext.request.contextPath}/emp?currentPage=2">2</a></li>
                                    <li><a href="${pageContext.request.contextPath}/emp?currentPage=3">3</a></li>
                                    <li><a href="${pageContext.request.contextPath}/emp?currentPage=4">4</a></li>
                                    <li><a href="${pageContext.request.contextPath}/emp?currentPage=5">5</a></li>
                                    <li><a href="${pageContext.request.contextPath}/emp?currentPage=${currentPage+1}">»</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <form  action="" method="post" name="form">
        <input type="hidden" name="_method" value="delete"/>
    </form>
</div>

<script src="${pageContext.request.contextPath}/assets/js/theme.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/amazeui.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/amazeui.datatables.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/dataTables.responsive.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/app.js"></script>

</body>
<script>
    function sub() {
        var id = $("input[name='id']").val()
        if(id.length<=0){
            $("#id").val("0")
        }
    }

    // $(function () {
    //     $("#delete").click(function () {
    //         var action = $(this).attr("href");
    //         alert(action)
    //         // var action2 = $("#form").action();
    //         // var action2 = 11111
    //         // alert("第一个："+action+",第二个："+action2)
    //
    //         // $("#form").attr("action",action).submit();
    //         // return false;
    //     })
    // })



</script>
