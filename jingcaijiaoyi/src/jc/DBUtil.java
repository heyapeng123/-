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
	//��һ�������������ļ�
	//�ڶ�������ȡ�����ļ�
	public DBUtil(){
		//������Properties
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
	//��д�������Ӷ���ķ���
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
	
	//��ѯ���ݿ��ķ���
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
	
	//��ɾ�ĵķ���
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
	//�رն���
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
