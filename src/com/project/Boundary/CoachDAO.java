package com.project.Boundary;

import java.sql.SQLException;
import java.util.ArrayList;

import com.project.Entity.*;

public class CoachDAO extends DatabaseHelper {
	
	public void addCoach(TacticsCoach p) {
		
		// Add a new Coach
		String sql = "insert into TacticsCoach (_headCoach,"
				+ " _offensiveCoordinator,"
				+ " _defensiveCoordinator,"
				+ " _specialTeamsCoach)"
				+ "VALUES(?,?,?,?,?,?)";

		try {
			connectDB();

			this.prepStatement = this.connect.prepareStatement(sql);

			this.prepStatement.setString(1, p.get_headCoach());
			this.prepStatement.setString(2, p.get_offensiveCoordinator());
			this.prepStatement.setString(3, p.get_deffensiveCoordinator());
			this.prepStatement.setString(4, p.get_specialTeamsCoach());
			
			

			this.prepStatement.execute();

			System.out.println("New Coach Added" + p.get_tacticsCoachId());
			disconnectDB();

		} catch (SQLException m) {
			System.out.println("Error Connecting to the the database.");
			System.out.println(m.getMessage());
			System.out.println(m.getErrorCode());
			System.out.println(m.getSQLState());
		}

	}

	public void updateInfo(TacticsCoach p) {

		
		// Update Query
		String sql = "UPDATE Team SET " 
				+ "_headCoach= ?" 
				+ "_offensiveCoordinator = ?"
				+ " _defensiveCoordinator = ?" 
				+ " _specialTeamsCoach = ?"; 
				

		try {

			connectDB();

			// Create the prepared statements
			this.prepStatement = this.connect.prepareStatement(sql);

			// Execute the statement
			this.prepStatement.executeUpdate();

			// Set the parameters
			
			this.prepStatement.setString(1, p.get_headCoach());
			this.prepStatement.setString(2, p.get_offensiveCoordinator());
			this.prepStatement.setString(3, p.get_deffensiveCoordinator());
			this.prepStatement.setString(4, p.get_specialTeamsCoach());
			

			System.out.println("Updated Coach: " + p.get_tacticsCoachId());

			// Disconnect to the database
			disconnectDB();

		} catch (SQLException m) {

			System.out.println("Error updating Coach");
			System.out.println(m.getMessage());
			System.out.println(m.getErrorCode());
			System.out.println(m.getSQLState());
		}

	}

	public void deleteInfo(TacticsCoach id) {

		try {

			connectDB();

			// Delete query
			String sql = "DELETE FROM TacticsCoach WHERE id=?";

			this.prepStatement = this.connect.prepareStatement(sql);

			this.prepStatement.setInt(1, id.get_tacticsCoachId());

			// Execute the query
			this.prepStatement.executeUpdate();

			System.out.println("Deleted Coach: " + id.get_tacticsCoachId());

			disconnectDB();
		} catch (SQLException m) {

			System.out.println("Error deleting Coach");
			System.out.println(m.getMessage());
			System.out.println(m.getErrorCode());
			System.out.println(m.getSQLState());
		}
	}
	public ArrayList<TacticsCoach> displayStadium(){
		ArrayList<TacticsCoach> allStadiums = new ArrayList <TacticsCoach>();
		
		//Select all Teams
		String sql = "SELECT * FROM TacticsCoach";
		
		try {
			connectDB();
			
			this.statement = this.connect.createStatement();
			this.resultSet = this.statement.executeQuery(sql);
			
			while(resultSet.next()) {
			
				
				TacticsCoach st = new TacticsCoach(resultSet.getString("_headCoach"),
						 resultSet.getString(" _offensiveCoordinator"),
						 resultSet.getString(" _defensiveCoordinator"),
						 resultSet.getString(" _specialTeamsCoach"));
			
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
