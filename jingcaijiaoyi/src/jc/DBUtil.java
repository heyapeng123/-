package jc;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class DBUtil {
	private Connection conn=null;
	private Statement stmt=null;
	private ResultSet rs=null;
	private  String dbClassName;
	private String dbUrl;
	private String dbUser;
	private String dbPwd;
	//第一步，创建配置文件
	//第二步，读取配置文件
	public DBUtil(){
		//属性类Properties
		Properties prop=new Properties();
		try {
			prop.load(DBUtil.class.getClassLoader().getResourceAsStream("db.properties"));
			dbClassName=prop.getProperty("dbClassName");
			dbUrl=prop.getProperty("dbUrl");
			dbUser=prop.getProperty("dbUser");
			dbPwd=prop.getProperty("dbPwd");
		
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	//编写创建连接对象的方法
	private Connection getConnection(){
		try {
			Class.forName(dbClassName);
			conn=DriverManager.getConnection(dbUrl,dbUser,dbPwd);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch(SQLException e1){
			e1.printStackTrace();
		}
		return conn;
	}
	
	//查询数据库表的方法
	public ResultSet executeQuery(String sql){
		conn=getConnection();
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
	
	//增删改的方法
	public int executeUpdate(String sql){
		int flag=0;
		conn=getConnection();
		try {
			stmt=conn.createStatement();
			flag=stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;

	}
	//关闭对象
	public void close(){
		try {
			if (rs!=null)
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			if (stmt!=null)
			stmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			if (conn!=null)
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
