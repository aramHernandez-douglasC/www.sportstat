package com.project.Boundary;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DatabaseHelper {
	public String dsn = "jdbc:mysql://localhost/SportsStatsDB?useLegacyDatetimeCode=false&serverTimezone=UTC";
	public String username = "root";
	public String password = "!l0v3d@t@";

	public Connection connect = null;
	public ResultSet resultSet = null;
	public Statement statement = null;
	public PreparedStatement prepStatement = null;

	public void connectDB() throws SQLException {

		try {
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			this.connect = DriverManager.getConnection(this.dsn, this.username, this.password);
				if 	(this.connect.isClosed())	{
					System.out.println("Database connection not established.");
				} else {
					System.out.println("Database connection establshed.");
				}
		} catch (SQLException sx) {
			System.out.println("Error Connecting to the the database.");
			System.out.println(sx.getMessage());
			System.out.println(sx.getErrorCode());
			System.out.println(sx.getSQLState());
		}
	}

	public void disconnectDB() throws SQLException {

		this.connect.close();
		if (this.connect.isClosed()) {
			System.out.println("Database connection closed.");
		} else {
			System.out.println("Database connection is still open!");
		}
	}
}
