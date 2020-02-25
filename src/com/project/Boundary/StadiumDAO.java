package com.project.Boundary;

import java.sql.SQLException;
import java.util.ArrayList;

import com.project.Entity.*;

public class StadiumDAO extends DatabaseHelper {
	
public void addInfo(Stadium p) {
		
		// Add a new player
		String sql = "insert into Stadium (_stadiumName, _stadiumCity,"
				+ " _stadiumCountry, _stadiumCapacity, _stadiumPlayingSurface, _stadiumType)"
				+ "VALUES(?,?,?,?,?,?)";

		try {
			connectDB();

			this.prepStatement = this.connect.prepareStatement(sql);

			this.prepStatement.setString(1, p.get_stadiumName());
			this.prepStatement.setString(2, p.get_stadiumCity());
			this.prepStatement.setString(3, p.get_stadiumCountry());
			this.prepStatement.setInt(4, p.get_stadiumCapacity());
			this.prepStatement.setString(5, p.get_stadiumPlayingSurface());
			this.prepStatement.setString(6, p.get_stadiumType());
			

			this.prepStatement.execute();

			System.out.println("New Team Added" + p.get_stadiumId());
			disconnectDB();

		} catch (SQLException m) {
			System.out.println("Error Connecting to the the database.");
			System.out.println(m.getMessage());
			System.out.println(m.getErrorCode());
			System.out.println(m.getSQLState());
		}

	}

	public void updateInfo(Stadium p) {

		
		// Update Query
		String sql = "UPDATE Team SET " 
				+ "_stadiumName= ?" 
				+ "_stadiumCity = ?"
				+ " _stadiumCountry = ?" 
				+ " _stadiumCapacity = ?" 
				+ "_stadiumPlayingSurface = ?"
				+ "_stadiumType = ?";

		try {

			connectDB();

			// Create the prepared statements
			this.prepStatement = this.connect.prepareStatement(sql);

			// Execute the statement
			this.prepStatement.executeUpdate();

			// Set the parameters
			
			this.prepStatement.setString(1, p.get_stadiumName());
			this.prepStatement.setString(2, p.get_stadiumCity());
			this.prepStatement.setString(3, p.get_stadiumCountry());
			this.prepStatement.setInt(4, p.get_stadiumCapacity());
			this.prepStatement.setString(5, p.get_stadiumPlayingSurface());
			this.prepStatement.setString(6, p.get_stadiumType());
			

			System.out.println("Updated Stadium: " + p.get_stadiumId());

			// Disconnect to the database
			disconnectDB();

		} catch (SQLException m) {

			System.out.println("Error updating Player");
			System.out.println(m.getMessage());
			System.out.println(m.getErrorCode());
			System.out.println(m.getSQLState());
		}

	}

	public void deleteInfo(Stadium id) {

		try {

			connectDB();

			// Delete query
			String sql = "DELETE FROM Stadium WHERE id=?";

			this.prepStatement = this.connect.prepareStatement(sql);

			this.prepStatement.setInt(1, id.get_stadiumId());

			// Execute the query
			this.prepStatement.executeUpdate();

			System.out.println("Deleted Student: " + id.get_stadiumId());

			disconnectDB();
		} catch (SQLException m) {

			System.out.println("Error deleting Player");
			System.out.println(m.getMessage());
			System.out.println(m.getErrorCode());
			System.out.println(m.getSQLState());
		}
	}
	public ArrayList<Stadium> displayStadium(){
		ArrayList<Stadium> allStadiums = new ArrayList <Stadium>();
		
		//Select all Teams
		String sql = "SELECT * FROM Stadium";
		
		try {
			connectDB();
			
			this.statement = this.connect.createStatement();
			this.resultSet = this.prepStatement.executeQuery(sql);
			
			while(resultSet.next()) {
			
				
				Stadium st = new Stadium(resultSet.getString("_stadiumName"),
						 resultSet.getString(" _stadiumCity"),
						 resultSet.getString(" _stadiumCountry"),
						 resultSet.getString(" _stadiumState"),
						 
						 resultSet.getInt(" _stadiumCapacity"), 
						 resultSet.getString("_stadiumPlayingSurface"),
						 resultSet.getString("_stadiumType"));
			
				allStadiums.add(st);
			}
			disconnectDB();
		}
		catch(SQLException m) {
			
			System.out.println(m.getMessage());
			System.out.println(m.getErrorCode());
			System.out.println(m.getSQLState());
			
		}
		return allStadiums;
	}

}
