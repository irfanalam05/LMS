package com.lms.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class lmsDAO {
    
    private String jdbcURL = "jdbc:mysql://localhost:3306/lms";
    private String jdbcUserName = "root";
    private String jdbcPassword = "Irfan@12345";
    
    private static final String INSERT_USER_SQL = "INSERT INTO users (uname, email, country, passwd) VALUES (?, ?, ?, ?);";
    private static final String SELECT_ALL_USERS = "SELECT * FROM USERS;";
    private static final String DELETE_USERS_SQL = "DELETE FROM USERS WHERE ID=?;";
    private static final String UPDATE_USERS_SQL = "UPDATE USERS SET UNAME=?, EMAIL=?, COUNTRY=?, PASSWORD=? WHERE ID=?;";

    public lmsDAO() {
        super();
    }

    public Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUserName, jdbcPassword);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public void insertUser(String uname, String email, String country, String passwd) {
        try (Connection connection = getConnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USER_SQL);
            preparedStatement.setString(1, uname);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, country);
            preparedStatement.setString(4, passwd);
            
            int result = preparedStatement.executeUpdate();
            if (result > 0) {
                System.out.println("User inserted successfully.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

	public static String getDeleteUsersSql() {
		return DELETE_USERS_SQL;
	}

	public static String getUpdateUsersSql() {
		return UPDATE_USERS_SQL;
	}

	public static String getSelectAllUsers() {
		return SELECT_ALL_USERS;
	}

    // You can implement the other methods like deleteUser(), updateUser(), etc.
}
