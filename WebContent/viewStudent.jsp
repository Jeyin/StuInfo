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
   <table class="table table-bordered table-hover">
   <tr class="active">
     <td colspan="8" align="center"height="30">ѧ����Ϣ</td>
   </tr>
   <tr height="30" class="success">
     <td align="center" width="200" class="col-md-2 column">ѧ�ţ�</td>
     <td align="center" class="data" ><%=student.getId() %></td>
   </tr>
   <tr height="30" class="error">
     <td align="center" width="100">������</td>
     <td align="center" ><%=student.getName() %></td>
   </tr>
   <tr height="30" class="active">
     <td align="center"  width="100">���䣺</td>
     <td align="center" ><%=student.getAge() %></td>
   </tr>
   <tr height="30" class="warning">
     <td align="center"width="100">�Ա�</td>
     <td align="center"><%=student.getSex() %></td>
   </tr>
   <tr height="30" class="active">
     <td align="center" width="100">רҵ��</td>
     <td align="center"><%=student.getMajor() %></td>
   </tr>
   <tr height="30">
     <td align="center" width="100">ѧԺ��</td>
     <td align="center"><%=student.getCollege() %></td>
   </tr> 
   <tr height="30" class="info">
     <td align="center" width="100">��飺</td>
     <td align="left" ><%=student.getIntroduction() %></td>
   </tr>      
   </table>
   <a href="index.jsp" class="btn btn-primary btn-lg">����</a>
   </div>
   </div>
  </body>
</html>
