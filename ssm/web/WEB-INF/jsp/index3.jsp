<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/3/4
  Time: 21:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="${pageContext.request.contextPath}/student/add" method="post">
      name:<input type="text" name="student.name"><br/>
      address:<input type="text" name="student.address"><br/>
      time:<input type="text" name="student.time"><br/>
  <input type="submit">
  </form>
  </body>
</html>
