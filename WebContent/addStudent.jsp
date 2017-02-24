<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<!DOCTYPE HTML>
<html>
  <head>   
    <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
    <title>添加学生信息</title>
  </head> 
  <body>
  <div align="center">
  <div class="container">
  <form action="addStudent" method="post" class="form-horizontal">
  <div class="form-group">
  <table class="table table-bordered table-hover">
    <tr class="active">
      <td colspan="19" align="center" height="30" > 学生信息</td>
    </tr>
    <tr height="30">
      <td align="center" class="col-md-2 column" >学号:</td>
      <td align="center" >
        <input placeholder="请输入学号" class="form-control" name="id">
      </td>
    </tr>
    <tr height="30">
      <td align="center" >姓名:</td>
      <td align="center" ><input placeholder="请输入姓名" class="form-control" name="name"></td>
    </tr> 
    <tr height="30">
      <td align="center">年龄:</td>
      <td align="center"><input placeholder="请输入年龄" class="form-control" name="age"></td>
    </tr>  
    <tr height="30">
      <td align="center" >性别:</td>
      <td>
      <select name="sex">
        <option value="男">男</option>
        <option value="女">女</option>
      </select>
      </td>
    </tr>
    <tr height="30">
      <td align="center">专业:</td>
      <td align="center"><input placeholder="请输入专业" class="form-control"name="major"></td>
    </tr>
    <tr height="30">
      <td align="center">学院:</td>
      <td align="center"><input placeholder="请输入学院" class="form-control" name="college"></td>
    </tr>
    <tr height="30">
      <td align="center">介绍:</td>
      <td align="left" ><textarea placeholder="请输入自我介绍" rows="10" cols="50" class="form-control" name="introduction"></textarea></td>
    </tr>
  </table>
  <input class="btn btn-primary btn-lg" type="submit" value="提交">
  </div>
  </form>
  </div>
  </div>
  </body>
</html>
