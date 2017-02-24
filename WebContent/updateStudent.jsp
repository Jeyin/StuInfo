<%@page import="com.db.StudentManager"%>
<%@page import="com.db.Student"%>
<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<!DOCTYPE HTML>
<html>
  <head>
    <link rel="stylesheet" type="text/css" href="bootstrap.css">
    <title>查看学生信息</title>   
  </head>  
  <body>
  <%
      String id=request.getParameter("id");
      Student student=StudentManager.getStudent(id);
   %>
  <div align="center">
  <div class="container">
  <form action="updateStudent" method="post">
  <table class="table table-bordered table-hover">
    <tr>
      <td colspan="9" align="center" class="title" height="30" > 学生信息</td>
    </tr>
    <tr height="30">
      <td align="center" class="col-md-2 column">学号:</td>
      <td><input class="form-control" name="id" value="<%=student.getId() %>" readonly></td>
    </tr>
    <tr height="30">
      <td align="center">姓名:</td>
      <td align="center"><input class="form-control" name="name" value="<%=student.getName() %>" ></td>
    </tr>
    <tr height="30">
      <td align="center" >年龄:</td>
      <td align="center" ><input class="form-control" name="age" value="<%=student.getAge() %>" ></td>
    </tr>
    <tr height="30">
      <td align="center">性别:</td>
      <td align="left" >
        <select name="sex" >
          <%
              if (student.getSex()=="男") {
                  out.println("<option value=\"男\" checked>男</option>");
                  out.println("<option value=\"女\" >女</option>");
              } else {
                  out.println("<option value=\"女\" checked>女</option>");
                  out.println("<option value=\"男\" >男</option>");
              }
           %>
        </select>
      </td>
    </tr>
    <tr height="30">
      <td align="center" >专业:</td>
      <td align="center" ><input class="form-control" name="major" value="<%=student.getMajor() %>" ></td>
    </tr>
    <tr height="30">
      <td align="center" >学院:</td>
      <td align="center" ><input class="form-control" name="college" value="<%=student.getCollege() %>" ></td>
    </tr>
    <tr height="30">
      <td align="center" >介绍:</td>
      <td align="left" ><textarea class="form-control"  rows="10" cols="50" name="introduction"><%=student.getIntroduction() %></textarea></td>
    </tr>
  </table>
  <input class="btn btn-primary btn-lg" type="submit" value="提交" >
  </form>
  </div>
  </div>
  </body>
</html>
