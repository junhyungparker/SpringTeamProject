<%--
  Created by IntelliJ IDEA.
  User: PARKER
  Date: 2022/11/18
  Time: 9:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>FileForm</title>
</head>
<body>
    <form method="post" action="fileupload.jsp" enctype="multipart/form-data">
        <input type="file" name="img">
        <input type="submit" value="upload">
    </form>
</body>
</html>
