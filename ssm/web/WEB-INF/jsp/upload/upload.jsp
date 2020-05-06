<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2020/3/16
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文件上传</title>
</head>
<body>
<!-- 文件上传表单的提交方式必须是“post” 编码类型必须为：enctype="multipart/form-data" -->
     <form action="uuu" method="post" enctype="multipart/form-data">
            file:  <input type="file" name="file"><br>
            <input type="submit" value="上传文件">
     </form>
</body>
</html>
