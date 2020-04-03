package com.demo;
import java.sql.*;
import java.util.ArrayList;
import com.demo.User;

public class UserDao extends BaseDao{
   // 插入一条记录
   public void addUser(User user){  	  
   	   String sql = "INSERT INTO users" +
   	   		"(name,password,email,phone)VALUES(?,?,?,?)";	   
   	   try(
   		 Connection conn = dataSource.getConnection();
   		 PreparedStatement pstmt = conn.prepareStatement(sql))
   	   { 
   	     pstmt.setString(1,user.getName());
   	     pstmt.setString(2,user.getPassword());
   	     pstmt.setString(3,user.getEmail());
   	     pstmt.setString(4,user.getPhone());
   	     pstmt.executeUpdate();
   	   }catch(SQLException se){
   	  	  se.printStackTrace();
   	   }
   } 
   public boolean modify(String password,String username){  	  
   	   String sql = "UPDATE  users SET password=? WHERE name=?";   
   	   try(
   		 Connection conn = dataSource.getConnection();
   		 PreparedStatement pstmt = conn.prepareStatement(sql))
   	   { 
   	     pstmt.setString(1,password);
   	     pstmt.setString(2,username);
   	     pstmt.executeUpdate();
   	     return true;
   	   }catch(SQLException se){
   	  	  se.printStackTrace();
   		  return false;
   	   }
   } 
   // 按用户名查找密码
   public String findpassword(String name){ 
	      String sql = "SELECT *FROM users WHERE name=?";             
      User  user = new User();
      try(
    	   Connection conn = dataSource.getConnection();
    	   PreparedStatement pstmt = conn.prepareStatement(sql)){ 
   	   pstmt.setString(1,name);
   	   try(ResultSet rst = pstmt.executeQuery()){
   	     if(rst.next()){
   	       user.setName(rst.getString("name"));
   	       user.setPassword(rst.getString("password"));
   	     }
   	    }
      }catch(SQLException se){
   	  	return null;
   	  }
   	  return user.getPassword();
   }
   //按用户名查找电话号码
   public String findphone(String name){ 
	      String sql = "SELECT *FROM users WHERE name=?";             
   User  user = new User();
   try(
 	   Connection conn = dataSource.getConnection();
 	   PreparedStatement pstmt = conn.prepareStatement(sql)){ 
	   pstmt.setString(1,name);
	   try(ResultSet rst = pstmt.executeQuery()){
	     if(rst.next()){
	       user.setName(rst.getString("name"));
	       user.setPassword(rst.getString("password"));
	       user.setEmail(rst.getString("email"));
	       user.setPhone(rst.getString("phone"));
	     }
	    }
   }catch(SQLException se){
	  	return null;
	  }
	  return user.getPhone();
}
   // 查询所有用户
   public ArrayList<User> findAllUser(){  	  
	   	  
	   	  ArrayList<User> custList = new ArrayList<>();
	   	  String sql = "SELECT * FROM users";
	   	  try( 
	   		 Connection conn = dataSource.getConnection();
	   		 PreparedStatement pstmt = conn.prepareStatement(sql);
	   		 ResultSet rst = pstmt.executeQuery()){  		 
	   	      while(rst.next()){
	   	    	User  user = new User();
	   	        user.setName(rst.getString("name"));
	   	     user.setPassword(rst.getString("password"));
	   	       user.setEmail(rst.getString("email"));
	   	    user.setPhone(rst.getString("phone"));	
	   	        custList.add(user);	
	   	    }	     
	   	     return custList;
	   	  }catch(SQLException e){
	   	      e.printStackTrace();
	   		 return null;
	   	  }
	   }
	}



