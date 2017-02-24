<%@page import="com.db.StudentManager"%>
<%@page import="com.db.Student"%>
<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<!DOCTYPE HTML>
<html>
  <head>
    <link href="bootstrap.css" rel="stylesheet" type="text/css" >
    <title>学生管理系统</title>
  </head> 
  <body>
  <div align="center">  
    <div class="container">
        <div class="col-md-10 column" align="center" >
        <h2> 全部学生信息</h2>
        </div>
       <div class="col-md-2 column" align="right">
         <h3><a href="addStudent.jsp">添加学生</a></h3>
       </div>  
    <table class="table table-bordered table-hover" >  
      <thead>   
        <tr class="active">
          <td>
           学号
          </td>
          <td class="col-md-1 column">
           姓名
          </td>
          <td class="col-md-1 column">
          年龄
          </td>
          <td class="col-md-1 column">
           性别
          </td>
          <td class="col-md-1 column">
           专业
          </td>
          <td class="col-md-1 column">
       学院
          </td>
          <th>
          <td align="center">
          操作  
          </td>
          <th>
        </tr>  
        </thead>
        <%
        ArrayList<Student> students=StudentManager.getAllStudents();
        for(Student student:students)
        {
         %>
         <tr height="30" class="bg-success">
             <td class="col-md-1 column">
             <%=student.getId() %>
             </td>
              <td class="col-md-1 column">
             <%=student.getName() %>
             </td>
              <td class="col-md-1 column">
             <%=student.getAge() %>
             </td>
             <td class="col-md-1 column">
             <%=student.getSex() %>
             </td>
             <td class="col-md-1 column">
             <%=student.getMajor() %>
             </td>
             <td class="col-md-1 column">
             <%=student.getCollege() %>
             </td>
             <td class="col-md-1 column" align="center">
             <a href="viewStudent.jsp?id=<%=student.getId() %>" class="btn btn-success">查看</a>
             </td>
             <td class="col-md-1 column" align="center">
             <a href="updateStudent.jsp?id=<%=student.getId() %>" class="btn btn-warning">修改</a>
             </td>
             <td class="col-md-1 column" align="center">
             <a href="deleteStudent?id=<%=student.getId() %>" class="btn btn-danger">删除</a>
             </td>
         </tr>
         <%
         }
         %>
    </table>
    <div align="left">
     <ul class="pagination pagination-lg">
    <li><a href="#">&laquo;</a></li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li><a href="#">&raquo;</a></li>
    </ul>
    </div>
     </div>
    </div>
  </body>
</html>
