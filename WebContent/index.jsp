<%@page import="com.db.StudentManager"%>
<%@page import="com.db.Student"%>
<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<!DOCTYPE HTML>
<html>
  <head>
    <link href="bootstrap.css" rel="stylesheet" type="text/css" >
    <title>ѧ������ϵͳ</title>
  </head> 
  <body>
  <div align="center">  
    <div class="container">
        <div class="col-md-10 column" align="center" >
        <h2> ȫ��ѧ����Ϣ</h2>
        </div>
       <div class="col-md-2 column" align="right">
         <h3><a href="addStudent.jsp">���ѧ��</a></h3>
       </div>  
    <table class="table table-bordered table-hover" >  
      <thead>   
        <tr class="active">
          <td>
           ѧ��
          </td>
          <td class="col-md-1 column">
           ����
          </td>
          <td class="col-md-1 column">
          ����
          </td>
          <td class="col-md-1 column">
           �Ա�
          </td>
          <td class="col-md-1 column">
           רҵ
          </td>
          <td class="col-md-1 column">
       ѧԺ
          </td>
          <th>
          <td align="center">
          ����  
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
             <a href="viewStudent.jsp?id=<%=student.getId() %>" class="btn btn-success">�鿴</a>
             </td>
             <td class="col-md-1 column" align="center">
             <a href="updateStudent.jsp?id=<%=student.getId() %>" class="btn btn-warning">�޸�</a>
             </td>
             <td class="col-md-1 column" align="center">
             <a href="deleteStudent?id=<%=student.getId() %>" class="btn btn-danger">ɾ��</a>
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
