<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<!DOCTYPE HTML>
<html>
  <head>   
    <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
    <title>���ѧ����Ϣ</title>
  </head> 
  <body>
  <div align="center">
  <div class="container">
  <form action="addStudent" method="post" class="form-horizontal">
  <div class="form-group">
  <table class="table table-bordered table-hover">
    <tr class="active">
      <td colspan="19" align="center" height="30" > ѧ����Ϣ</td>
    </tr>
    <tr height="30">
      <td align="center" class="col-md-2 column" >ѧ��:</td>
      <td align="center" >
        <input placeholder="������ѧ��" class="form-control" name="id">
      </td>
    </tr>
    <tr height="30">
      <td align="center" >����:</td>
      <td align="center" ><input placeholder="����������" class="form-control" name="name"></td>
    </tr> 
    <tr height="30">
      <td align="center">����:</td>
      <td align="center"><input placeholder="����������" class="form-control" name="age"></td>
    </tr>  
    <tr height="30">
      <td align="center" >�Ա�:</td>
      <td>
      <select name="sex">
        <option value="��">��</option>
        <option value="Ů">Ů</option>
      </select>
      </td>
    </tr>
    <tr height="30">
      <td align="center">רҵ:</td>
      <td align="center"><input placeholder="������רҵ" class="form-control"name="major"></td>
    </tr>
    <tr height="30">
      <td align="center">ѧԺ:</td>
      <td align="center"><input placeholder="������ѧԺ" class="form-control" name="college"></td>
    </tr>
    <tr height="30">
      <td align="center">����:</td>
      <td align="left" ><textarea placeholder="���������ҽ���" rows="10" cols="50" class="form-control" name="introduction"></textarea></td>
    </tr>
  </table>
  <input class="btn btn-primary btn-lg" type="submit" value="�ύ">
  </div>
  </form>
  </div>
  </div>
  </body>
</html>
