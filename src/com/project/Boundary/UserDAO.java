package com.project.Boundary;

import java.sql.SQLException;


import com.project.Entity.User;

public class UserDAO extends DatabaseHelper {
	
public void addInfo(User p) {
		
		// Add a new player
		String sql = "insert into User (_fullName, _dob, _city, _province, _country, _loginUser, _loginPassword)" + "VALUES(?,?,?,?,?,?,?)";

		try {
			connectDB();

			this.prepStatement = this.connect.prepareStatement(sql);

			this.prepStatement.setString(1, p.get_fullName());
			this.prepStatement.setString(2, p.get_dob().toString());
			this.prepStatement.setString(3, p.get_city());
			this.prepStatement.setString(4, p.get_province());
			this.prepStatement.setString(5, p.get_country());
			this.prepStatement.setString(6, p.get_loginUser());
			this.prepStatement.setString(7, p.get_loginPassword());
			
			

			this.prepStatement.execute();

			System.out.println("User Added! : " + p.get_userID());
			disconnectDB();

		} catch (SQLException m) {
			System.out.println("Error Adding User...");
			System.out.println(m.getMessage());
			System.out.println(m.getErrorCode());
			System.out.println(m.getSQLState());
		}

	}



public void updateName(User u, String userName) {

		
		// Update Query
		String sql = "UPDATE User SET " + "_fullName= ?" + "WHERE _loginUser = " + userName;
		
		try {

			connectDB();

			// Create the prepared statements
			this.prepStatement = this.connect.prepareStatement(sql);

			// Execute the statement
			this.prepStatement.executeUpdate();

			// Set the parameters
			
			this.prepStatement.setString(1, u.get_fullName());
			

			System.out.println("Updated User: " + u.get_userID());

			// Disconnect to the database
			disconnectDB();

		} catch (SQLException m) {

			System.out.println("Error updating user fullname");
			System.out.println(m.getMessage());
			System.out.println(m.getErrorCode());
			System.out.println(m.getSQLState());
		}

	}


public void updateDOB(User u, String userName) {

		
		// Update Query
		String sql = "UPDATE User SET " + "_dob= ?" + "WHERE _loginUser = " + userName;
		
		try {

			connectDB();

			// Create the prepared statements
			this.prepStatement = this.connect.prepareStatement(sql);

			// Execute the statement
			this.prepStatement.executeUpdate();

			// Set the parameters
			
			this.prepStatement.setString(1, u.get_dob().toString());
			

			System.out.println("Updated User: " + u.get_userID());

			// Disconnect to the database
			disconnectDB();

		} catch (SQLException m) {

			System.out.println("Error updating user birthday");
			System.out.println(m.getMessage());
			System.out.println(m.getErrorCode());
			System.out.println(m.getSQLState());
		}

	}

public void updateUserName(User u, String userName) {

	
	// Update Query
	String sql = "UPDATE User SET " + "_loginUser= ?" + "WHERE _loginUser = " + userName;
	
	try {

		connectDB();

		// Create the prepared statements
		this.prepStatement = this.connect.prepareStatement(sql);

		// Execute the statement
		this.prepStatement.executeUpdate();

		// Set the parameters
		
		this.prepStatement.setString(1, u.get_loginUser());
		

		System.out.println("Updated User: " + u.get_userID());

		// Disconnect to the database
		disconnectDB();

	} catch (SQLException m) {

		System.out.println("Error updating username");
		System.out.println(m.getMessage());
		System.out.println(m.getErrorCode());
		System.out.println(m.getSQLState());
	}

}

public void updatePassword(User u, String userName) {

	
	// Update Query
	String sql = "UPDATE User SET " + "_loginPassword= ?" + "WHERE _loginUser = " + userName;
	
	try {

		connectDB();

		// Create the prepared statements
		this.prepStatement = this.connect.prepareStatement(sql);

		// Execute the statement
		this.prepStatement.executeUpdate();

		// Set the parameters
		
		this.prepStatement.setString(1, u.get_loginPassword());
		

		System.out.println("Updated User: " + u.get_userID());

		// Disconnect to the database
		disconnectDB();

	} catch (SQLException m) {

		System.out.println("Error updating user password");
		System.out.println(m.getMessage());
		System.out.println(m.getErrorCode());
		System.out.println(m.getSQLState());
	}

}


	public void deleteInfo(User id) {

		try {

			connectDB();

			// Delete query
			String sql = "DELETE FROM Team WHERE id=?";

			this.prepStatement = this.connect.prepareStatement(sql);

			this.prepStatement.setInt(1, id.get_userID());

			// Execute the query
			this.prepStatement.executeUpdate();

			System.out.println("Deleted Team: " + id.get_userID());

			disconnectDB();
		} catch (SQLException m) {

			System.out.println("Error deleting Team");
			System.out.println(m.getMessage());
			System.out.println(m.getErrorCode());
			System.out.println(m.getSQLState());
		}
	}
	
public void checkLogin(User loginToken)
	{
		String query = "SELECT * FROM User WHERE _loginUser = ? AND _loginPassword = ?";
		
		try
		{
			connectDB();
			this.prepStatement = this.connect.prepareStatement(query);
			this.prepStatement.setString(1, loginToken.get_loginUser());
			this.prepStatement.setString(2, loginToken.get_loginPassword());
			this.resultSet = this.prepStatement.executeQuery();
			
			if(this.resultSet.next())
			{
				System.out.println("true");
			}
			else
			{
				System.out.println("false");
			}
			disconnectDB();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
	}
	
	
	
}



