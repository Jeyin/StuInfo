<%@page import="com.db.StudentManager"%>
<%@page import="com.db.Student"%>
<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<!DOCTYPE HTML>
<html>
  <head>
    <link rel="stylesheet" type="text/css" href="bootstrap.css">
    <title>�鿴ѧ����Ϣ</title>   
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
      <td colspan="9" align="center" class="title" height="30" > ѧ����Ϣ</td>
    </tr>
    <tr height="30">
      <td align="center" class="col-md-2 column">ѧ��:</td>
      <td><input class="form-control" name="id" value="<%=student.getId() %>" readonly></td>
    </tr>
    <tr height="30">
      <td align="center">����:</td>
      <td align="center"><input class="form-control" name="name" value="<%=student.getName() %>" ></td>
    </tr>
    <tr height="30">
      <td align="center" >����:</td>
      <td align="center" ><input class="form-control" name="age" value="<%=student.getAge() %>" ></td>
    </tr>
    <tr height="30">
      <td align="center">�Ա�:</td>
      <td align="left" >
        <select name="sex" >
          <%
              if (student.getSex()=="��") {
                  out.println("<option value=\"��\" checked>��</option>");
                  out.println("<option value=\"Ů\" >Ů</option>");
              } else {
                  out.println("<option value=\"Ů\" checked>Ů</option>");
                  out.println("<option value=\"��\" >��</option>");
              }
           %>
        </select>
      </td>
    </tr>
    <tr height="30">
      <td align="center" >רҵ:</td>
      <td align="center" ><input class="form-control" name="major" value="<%=student.getMajor() %>" ></td>
    </tr>
    <tr height="30">
      <td align="center" >ѧԺ:</td>
      <td align="center" ><input class="form-control" name="college" value="<%=student.getCollege() %>" ></td>
    </tr>
    <tr height="30">
      <td align="center" >����:</td>
      <td align="left" ><textarea class="form-control"  rows="10" cols="50" name="introduction"><%=student.getIntroduction() %></textarea></td>
    </tr>
  </table>
  <input class="btn btn-primary btn-lg" type="submit" value="�ύ" >
  </form>
  </div>
  </div>
  </body>
</html>
