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
	public String password = "";

	public Connection connect = null;
	public ResultSet resultSet = null;
	public Statement statement = null;
	public PreparedStatement prepStatement = null;

	public void connectDB() throws SQLException {

		this.connect = DriverManager.getConnection(this.dsn, this.username, this.password);

		if (this.connect.isClosed()) {

			System.out.println("Database connection was not established");
		} else {
			System.out.println("Database Connection established");
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
