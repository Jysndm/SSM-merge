<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath =request.getScheme()+"://"+
            request.getServerName()+":"+request.getServerPort()+
            request.getContextPath()+"/";
%>
<html>
<head>
    <title>功能入口</title>
    <base href="<%=basePath%>"/>
</head>
<body>
<div align="center">
    <p>ssm整合的例子</p>
    <img src="images/万万.jpg" width="230" height="307"/>
    <table>
        <tr>
            <td ><a href="addStudent.jsp">注册学生</a></td>
        </tr>
        <tr>
            <td><a href="listStudent.jsp">浏览学生</a></td>
        </tr>
    </table>
</div>


</body>
</html>