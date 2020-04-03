package com.demo;
import java.sql.*;
import java.util.ArrayList;

import com.demo.Book;
public class BookDao extends BaseDao{
	public boolean addBook(String name, double price){  	  
	   	   String sql = "INSERT INTO book" +
	   	   		"(pname,price)VALUES(?,?)";	   
	   	   try(
	   		 Connection conn = dataSource.getConnection();
	   		 PreparedStatement pstmt = conn.prepareStatement(sql))
	   	   { 
	   	     pstmt.setString(1,name);
	   	     pstmt.setDouble(2,price);
	   	     pstmt.executeUpdate();
	   	     return true;
	   	   }catch(SQLException se){
	   	  	  se.printStackTrace();
	   		  return false;
	   	   }
	   } 
	 public boolean modify(String name,double price){  	  
	   	   String sql = "UPDATE  book SET price=? WHERE pname=?";   
	   	   try(
	   		 Connection conn = dataSource.getConnection();
	   		 PreparedStatement pstmt = conn.prepareStatement(sql))
	   	   { 
	   	     pstmt.setString(1,name);
	   	     pstmt.setDouble(2,price);
	   	     pstmt.executeUpdate();
	   	     return true;
	   	   }catch(SQLException se){
	   	  	  se.printStackTrace();
	   		  return false;
	   	   }
	   } 
	public ArrayList<Book> findAllBook(){  	  
	   	  
	   	  ArrayList<Book> custList = new ArrayList<>();
	   	  String sql = "SELECT * FROM book";
	   	  try( 
	   		 Connection conn = dataSource.getConnection();
	   		 PreparedStatement pstmt = conn.prepareStatement(sql);
	   		 ResultSet rst = pstmt.executeQuery()){  		 
	   	      while(rst.next()){
	   	    	Book user = new Book();
	   	        user.setPname(rst.getString("pname"));
	   	     user.setPrice(rst.getDouble("price"));
	   	        custList.add(user);	
	   	    }	     
	   	     return custList;
	   	  }catch(SQLException e){
	   	      e.printStackTrace();
	   		 return null;
	   	  }
	   }
	public double findprice(String pname){ 
	      String sql = "SELECT *FROM book WHERE pname=?"; 
	      Book book=new Book();
  try(
	   Connection conn = dataSource.getConnection();
	   PreparedStatement pstmt = conn.prepareStatement(sql)){ 
	   pstmt.setString(1,pname);
	   try(ResultSet rst = pstmt.executeQuery()){
	     if(rst.next()){
	       book.setPname(rst.getString("pname"));
	       book.setPrice(rst.getDouble(("price")));
	     }
	    }
  }catch(SQLException se){
	  	return 0;
	  }
	  return book.getPrice();
}
	}

