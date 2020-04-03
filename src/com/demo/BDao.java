package com.demo;
import com.mchange.v2.c3p0.ComboPooledDataSource;
import java.sql.*;
import javax.naming.*;
import javax.sql.DataSource;
public class BDao {
	ComboPooledDataSource dataSource = new ComboPooledDataSource("wonder");
	public BDao(){
		try {
		     Context context = new InitialContext();
		  }catch(NamingException ne){
		      System.out.println("Exception:"+ne);
		  }
		}
		// 返回一个连接对象
		public Connection getConnection()throws Exception{
			return dataSource.getConnection(); 
		}
		
	}

