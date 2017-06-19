package com.java.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
public class DatabaseMysql {

	public DatabaseMysql(){
		
	}
	
	static {
		try {		
			Class.forName("oracle.jdbc.driver.OracleDriver");
			} catch (Exception e) {
				System.out.println(e);
		} 
	}
	
	public static Connection getConnection() throws SQLException{
		
		Connection  connection=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
		return connection;
	}
	
	public static List<Employee> view() throws SQLException{
		Connection connection=DatabaseMysql.getConnection();
		List<Employee> list=new ArrayList<Employee>();
		Statement statement=connection.createStatement();
		String sql="select *from c_table";
		ResultSet rs=statement.executeQuery(sql);
		while(rs.next()){
			Employee user=new Employee();
			user.setId(rs.getInt("id"));
			user.setName(rs.getString("name"));
			user.setPassword(rs.getString("password"));
			user.setEmail(rs.getString("email"));
			user.setCountry(rs.getString("country"));
			
			list.add(user);
		}
		if(rs!=null)
		rs.close();
		if(statement!=null)
		statement.close();
		return list;
		
	}
	public static int save(Employee employee){
		int status=0;
		try{
		Connection connection =DatabaseMysql.getConnection();	
		PreparedStatement statement=connection.prepareStatement("insert into c_table(id,name,password,email,country)values(?,?,?,?,?)");
		statement.setInt(1,employee.getId());
		statement.setString(2,employee.getName());
		statement.setString(3, employee.getPassword());
		statement.setString(4, employee.getEmail());
		statement.setString(5,employee.getCountry());
		status=statement.executeUpdate();
		connection.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		return status;
	}
	public static int update(Employee employee) {
		int status=0;
		Connection connection = null;
		Statement stmt = null;
		try{
			System.out.println("connection");
		 connection =DatabaseMysql.getConnection();
		stmt = connection.createStatement();
		String sql = "update c_table set name='"+employee.getName()+"',email='"+employee.getEmail()+"',password = '"+employee.getPassword()+"',country='"+employee.getCountry()+"' where id = '"+employee.getId()+"' ";
		ResultSet set = stmt.executeQuery(sql);
		if(set != null)
			status = 1;
		}catch(Exception e){
		e.printStackTrace();
		}
		if(connection != null)
			connection = null;
		if(stmt != null)
			stmt = null;
		
		return status;
		
		
	}
	public static Employee getElementById(int id){
		Employee employee=new Employee();
		try{
			Connection connection=DatabaseMysql.getConnection();
			PreparedStatement statement=connection.prepareStatement("select *from c_table where id=? ");
			statement.setInt(1, id);
			ResultSet rs=statement.executeQuery();
			if(rs.next()){
				employee.setId(rs.getInt("id"));
				employee.setName(rs.getString("name"));
				employee.setPassword(rs.getString("password"));
				employee.setEmail(rs.getString("email"));
				employee.setCountry(rs.getString("country"));
				
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return employee;
	}
	public static int delete(Employee employee){
		int status=0;
		try{
			Connection connection=DatabaseMysql.getConnection();
			PreparedStatement statement=connection.prepareStatement("delete from c_table where id=?");
			statement.setInt(1,employee.getId());
			status=statement.executeUpdate();
			connection.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return status;
		
	}
	public static int deleteOut(int id){
		int status=0;
		try{
			Connection connection=DatabaseMysql.getConnection();
			PreparedStatement statement=connection.prepareStatement("delete from c_table where id=?");
			statement.setInt(1,id);
			status=statement.executeUpdate();
			connection.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		return status;
	}
}






























