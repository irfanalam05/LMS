package com.lms.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class lmsDAO {
	
		private String jdbcURL="jdbc:mysql://localhost:3306/lms";
		private String jdbcUserName="root";
		private String jdbcPassword="Irfan@12345";
		
		private static final String INSERT_USER_SQL="INSERT INTO users "+"(uname,email,country,passwd) VALUES "+"(?,?,?,?);";
		private static final String SELECT_USER_BY_ID="SELECT * FROM USERS WHERE ID=?;";
		private static final String SELECT_ALL_USERS="SELECT * FROM USERS;";
		private static final String DELETE_USERS_SQL="DELETE FROM USERS WHERE ID=?;";
		private static final String UPDATE_USERS_SQL="UPDATE USERS SET UNAME=?,EMAIL=?,COUNTRY=?,PASSWORD=?,WHERE ID=?;";

		
		public lmsDAO() {
			super();
			// TODO Auto-generated constructor stub
		}


			
		public Connection getConnection() 
		{
			Connection connection=null;
			
			try 
			{
				Class.forName("com.mysql.cj.jdbc.Driver");
				connection=DriverManager.getConnection(jdbcURL,jdbcUserName, jdbcPassword);
				
			}
			
			catch(SQLException | ClassNotFoundException e)
			{
				e.printStackTrace();
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			return connection;
		}
		
		public void insertUser(lmsDAO user)
		{
			lmsDAO dao=new lmsDAO();
			
			try( Connection connection=dao.getConnection())
			{
				PreparedStatement preparedStatement =connection.prepareStatement(INSERT_USER_SQL);
				
				PreparedStatement preparedStatement2 = preparedStatement;
			}
			catch(Exception e) {
				e.printStackTrace();
			}
		}

	}

