<%--
  Created by IntelliJ IDEA.
  User: 24175
  Date: 2021/11/25
  Time: 22:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath =request.getScheme()+"://"+
            request.getServerName()+":"+request.getServerPort()+
            request.getContextPath()+"/";
%>
<html>
<head>
    <title>查寻结果</title>
    <base href="<%=basePath%>"/>
    <script type="text/javascript" src="js/jquery-3.6.0.js"></script>
    <script type="text/javascript">
        $(function (){
            //在当前页面dom对象加载后，执行loadStudentData方法
            loadStudentData();
            $("#btnLoader").click(function (){
               loadStudentData()
            })
        })
        function loadStudentData(){
            $.ajax({
                url:"student/queryStudent.do",
                type:"get",
                dataType:"json",
                success:function (data){
                    //清楚旧数据
                    $("#info").html("")
                    //新增数据
                    $.each(data,function (i,n){
                        $("#info").append("<tr>")
                            .append("<td>"+n.id+"</td>")
                            .append("<td>"+n.name+"</td>")
                            .append("<td>"+n.sex+"</td>")
                            .append("</tr>")
                    })
                }
            })
        }
    </script>
</head>
<body>
    <div align="center">
        <table>
            <thead>
            <td>学号</td>
            <td>姓名</td>
            <td>性别</td>
            </thead>
            <tbody id="info">

            </tbody>
        </table>
        <input type="button" id="btnLoader" value="查询数据">
    </div>

</body>
</html>
