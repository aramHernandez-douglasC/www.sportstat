package com.project.Boundary;

import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.project.Entity.Team;
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



public void updateName(String userName, String fullName) {

		
		// Update Query
		String sql = "UPDATE User SET " + "_fullName= ?" + "WHERE _loginUser = ? ";
		
		
		try {

			connectDB();

			// Create the prepared statements
			this.prepStatement = this.connect.prepareStatement(sql);

			// Execute the statement
			this.prepStatement.executeUpdate();

			// Set the parameters
			
			this.prepStatement.setString(1, fullName);
			this.prepStatement.setString(2, userName);
			this.prepStatement.execute();
			
			User g = this.getUser(userName);
			

			
			
			System.out.println("Updated User: " + g.get_userID());

			// Disconnect to the database
			disconnectDB();

		} catch (SQLException m) {

			System.out.println("Error updating user fullname");
			System.out.println(m.getMessage());
			System.out.println(m.getErrorCode());
			System.out.println(m.getSQLState());
		}

	}


public void updateDOB(String userName, Date dob) {


	// Update Query
	String sql = "UPDATE User SET " + "_dob= ?" + "WHERE _loginUser = ? ";
	
	
	try {

		connectDB();

		// Create the prepared statements
		this.prepStatement = this.connect.prepareStatement(sql);

		// Execute the statement
		this.prepStatement.executeUpdate();

		// Set the parameters
		
		this.prepStatement.setString(1, userName);
		this.prepStatement.setString(2, dob.toString());
		this.prepStatement.execute();
		
		User g = this.getUser(userName);
		

		
		
		System.out.println("Updated User: " + g.get_userID());

		// Disconnect to the database
		disconnectDB();

	} catch (SQLException m) {

		System.out.println("Error updating user fullname");
		System.out.println(m.getMessage());
		System.out.println(m.getErrorCode());
		System.out.println(m.getSQLState());
	}


	}
public User getUser(String userName) {
	
	User team = new User();
	String fullname = "";
	String city ="";
	String province="";
	String country="";
	String loginUser="";
	String password="" ;
	int id = 0;
	Date date1 = new Date();
	
	
	String sql = "SELECT * FROM User WHERE "+"_loginUser = ?;";
	try {
		connectDB();	

		this.prepStatement = this.connect.prepareStatement(sql);
		this.prepStatement.setString(1, userName);
		this.resultSet = this.prepStatement.executeQuery();
		
		
		
		
		
		
	    while(resultSet.next()){
		     id = Integer.parseInt(resultSet.getString("_loginID"));
		     fullname = resultSet.getString("_fullName");
		     try {
					date1 = new SimpleDateFormat("yy/mm/dd").parse(resultSet.getString("_dob"));
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}  
		     city = resultSet.getString("_city");
		     province = resultSet.getString("_province");
		     country = resultSet.getString("_country");
		     loginUser = resultSet.getString("_loginUser");
		     password = resultSet.getString("_loginPassword");
		    
		     team.set_userID(id);
		     team.set_fullName(fullname);
		     team.set_dob(date1);
		     team.set_city(city);
		     team.set_province(province);
		     team.set_country(country);
		     team.set_loginUser(loginUser);
		     team.set_loginPassword(password);
	    }
		

	    
		
		disconnectDB();

	}
	catch(SQLException m) {
		
		System.out.println(m.getMessage());
		System.out.println(m.getErrorCode());
		System.out.println(m.getSQLState());
		
	}
	return team;
}

public void updateUserName( String userName, String userNew) {

	
	// Update Query
		String sql = "UPDATE User SET " + "_loginUser= ?" + "WHERE _loginUser = ? ";
		
		
		try {

			connectDB();

			// Create the prepared statements
			this.prepStatement = this.connect.prepareStatement(sql);

			// Execute the statement
			this.prepStatement.executeUpdate();

			// Set the parameters
			
			this.prepStatement.setString(1, userNew);
			this.prepStatement.setString(2, userName);
			this.prepStatement.execute();
			
			User g = this.getUser(userName);
			

			
			
			System.out.println("Updated User: " + g.get_userID());

			// Disconnect to the database
			disconnectDB();

		} catch (SQLException m) {

			System.out.println("Error updating user username");
			System.out.println(m.getMessage());
			System.out.println(m.getErrorCode());
			System.out.println(m.getSQLState());
		}

}

public void updatePassword(String username, String password) {

	

	// Update Query
		String sql = "UPDATE User SET " + "_loginPassword= ?" + "WHERE _loginUser = ? ";
		
		
		try {

			connectDB();

			// Create the prepared statements
			this.prepStatement = this.connect.prepareStatement(sql);

			// Execute the statement
			this.prepStatement.executeUpdate();

			// Set the parameters
			
			this.prepStatement.setString(1, username);
			this.prepStatement.setString(2, password);
			this.prepStatement.execute();
			
			User g = this.getUser(username);
			

			
			
			System.out.println("Updated User: " + g.get_userID());

			// Disconnect to the database
			disconnectDB();

		} catch (SQLException m) {

			System.out.println("Error updating user fullname");
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
public void trackTeam(User u, Team t) {
	//insert into TrackList (_teamName, _userID,_userName) 
	//values (11,"test",21,"p");
	String query = "insert into TrackList (_teamID, _teamName, _userID,_userName)"
			+ "values (?,?,?,?);";
	
	String userName = u.get_loginUser();
	int userID = u.get_userID();
	int teamID = t.get_teamID();
	String teamName = t.get_teamFullName();
	
	try {
		connectDB();

		this.prepStatement = this.connect.prepareStatement(query);

		this.prepStatement.setInt(1, teamID);
		this.prepStatement.setString(2, teamName);
		this.prepStatement.setInt(3, userID);
		this.prepStatement.setString(4, userName);
	
		
		

		this.prepStatement.execute();

		System.out.println("User" + userName +"Now Tracking Team: " + teamName);
		disconnectDB();

	} catch (SQLException m) {
		System.out.println("Error Adding User...");
		System.out.println(m.getMessage());
		System.out.println(m.getErrorCode());
		System.out.println(m.getSQLState());
	}
}
	
	
	
}



