package com.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class StudentManager {
    //获取数据库连接
	public static Connection getConnection() throws ClassNotFoundException, SQLException{
		String url="jdbc:mysql://localhost:3306/student?useUnicode=true&characterEncoding=GB2312";
		String user="root";
		String pwd="";
		String driver="com.mysql.jdbc.Driver";
		//加载数据库驱动
		Class.forName(driver);
		//数据库连接
		Connection conn=DriverManager.getConnection(url, user, pwd);
		return conn;		
	}
	
	public static void main(String args[]){
		try {
			Connection conn=getConnection();
			System.out.println("Successe connected");
		//	PreparedStatement pst=conn.prepareStatement("select *from stu where id=26;");
			Statement st=conn.createStatement();
			ResultSet rs=st.executeQuery("select *from stu where id=26;");
			while(rs.next())
			{
				System.out.println(rs.getString("id")+"\t"+rs.getString("major"));
			}
			ArrayList<Student> students= getAllStudents();
			for(Student student:students)
			{
				System.out.println(student.getId()+"\t"+student.getName());
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//添加学生信息
	public static boolean addStudent (String id, String name, int age, String sex,String major, String college, String introduction) {
		 try {
			 Connection conn;
			 conn = getConnection();
		     String addsql="insert into stu values(?,?,?,?,?,?,?);"; //向数据库里添加学生信息
			 PreparedStatement st=conn.prepareStatement(addsql);
			 st.setString(1, id);
			 st.setString(2, name);
			 st.setInt(3, age);
			 st.setString(4, sex);
			 st.setString(5, major);
			 st.setString(6, college);
			 st.setString(7, introduction);
			 st.execute();
			 conn.close();
			 return true;	
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return false;
			}		
	}
	
	//更新学生信息
	public static boolean updateStudent (String id, String name, int age, String sex, String major, String college, String introduction) {
		try {
			 Connection conn;
			 conn = getConnection();
		     String updatesql="update stu set name=?,age=?,sex=?,major=?,college=?,introduction=? where id=?;"; //向数据库里更新学生信息
			 PreparedStatement st=conn.prepareStatement(updatesql);
			 st.setString(1, name);
			 st.setInt(2, age);
			 st.setString(3, sex);
			 st.setString(4, major);
			 st.setString(5, college);
			 st.setString(6, introduction);
			 st.setString(7, id);
			 st.execute();
			 conn.close();
			 return true;	
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return false;
			}		
	}
	//删除学生信息
	public static boolean deleteStudent (String id) {
		try {
			 Connection conn;
			 conn = getConnection();
		     String deletesql="delete from stu where id=?;"; //向数据库里删除学生信息
			 PreparedStatement st=conn.prepareStatement(deletesql);
			 st.setString(1, id);
			 st.execute();
			 conn.close();
			 return true;	
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return false;
			}	
	}
	
	//按照学号查询学生信息
	public static Student getStudent (String id) {
		Student student=null;
		try {
			Connection conn=getConnection();
			String querysql="select * from stu where id=?;";
			PreparedStatement st=conn.prepareStatement(querysql);
			st.setString(1, id);
			st.execute();
			ResultSet rs=st.getResultSet();
			if(rs.next()) {
				student=new Student();
				student.setId(rs.getString("id"));
				student.setName(rs.getString("name"));
				student.setAge(rs.getInt("age"));
				student.setSex(rs.getString("sex"));
				student.setMajor(rs.getString("major"));
				student.setCollege(rs.getString("college"));
				student.setIntroduction(rs.getString("introduction"));
			}
			conn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return student;
		
	}
	
	//查询所有学生信息
	public static ArrayList<Student> getAllStudents() {
		ArrayList<Student> students=new ArrayList<Student>();
		try {
			Connection conn=getConnection();
			String query_all_sql="select * from stu;";
			PreparedStatement st=conn.prepareStatement(query_all_sql);
			st.execute();
			ResultSet rs=st.getResultSet();
			while(rs.next()) {
				Student student=new Student();
				student.setId(rs.getString("id"));
				student.setName(rs.getString("name"));
				student.setAge(rs.getInt("age"));
				student.setSex(rs.getString("sex"));
				student.setMajor(rs.getString("major"));
				student.setCollege(rs.getString("college"));
				student.setIntroduction(rs.getString("introduction"));
				students.add(student);
			}
			conn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return students;
		
	}
	
}
