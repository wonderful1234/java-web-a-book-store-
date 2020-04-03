package com.demo;
import java.sql.*;
import com.demo.Manager;
public class ManagerDao extends BDao {
	public String findpassword(String name){ 
	      String sql = "SELECT *FROM manager WHERE name=?";             
    Manager  manager = new Manager();
    try(
  	   Connection conn = dataSource.getConnection();
  	   PreparedStatement pstmt = conn.prepareStatement(sql)){ 
 	   pstmt.setString(1,name);
 	   try(ResultSet rst = pstmt.executeQuery()){
 	     if(rst.next()){
 	       manager.setName(rst.getString("name"));
 	       manager.setPassword(rst.getString("password"));
 	     }
 	    }
    }catch(SQLException se){
 	  	return null;
 	  }
 	  return manager.getPassword();
 }

}
