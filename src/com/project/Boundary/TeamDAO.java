package com.project.Boundary;

import java.sql.SQLException;
import java.util.ArrayList;

import com.project.Entity.*;

public class TeamDAO extends DatabaseHelper{
	
	public void addInfo(Team p) {
		
		// Add a new player
		String sql = "insert into Team (_APIkey, _teamCity, _teamFullName, _teamConference, _teamDivision, _teamSeason)" + "VALUES(?,?,?,?,?,?)";

		try {
			connectDB();

			this.prepStatement = this.connect.prepareStatement(sql);

			this.prepStatement.setString(1, p.get_APIkey());
			this.prepStatement.setString(2, p.get_teamCity());
			this.prepStatement.setString(3, p.get_teamFullName());
			this.prepStatement.setString(4, p.get_teamConference());
			this.prepStatement.setString(5, p.get_teamDivision());
			this.prepStatement.setString(6, p.get_teamSeason());
			

			this.prepStatement.execute();

			System.out.println("New Team Added" + p.get_teamID());
			disconnectDB();

		} catch (SQLException m) {
			System.out.println("Error Connecting to the the database.");
			System.out.println(m.getMessage());
			System.out.println(m.getErrorCode());
			System.out.println(m.getSQLState());
		}

	}

	public void updateInfo(Team u) {

		
		// Update Query
		String sql = "UPDATE Team SET " + "_teamCity= ?" + "_teamFullName = ?"
				+ " _teamConference = ?" + " _teamDivision = ?" + "_teamSeason = ?";

		try {

			connectDB();

			// Create the prepared statements
			this.prepStatement = this.connect.prepareStatement(sql);

			// Execute the statement
			this.prepStatement.executeUpdate();

			// Set the parameters
			
			this.prepStatement.setString(2, u.get_teamCity());
			this.prepStatement.setString(3, u.get_teamFullName());
			this.prepStatement.setString(4, u.get_teamConference());
			this.prepStatement.setString(5, u.get_teamDivision());
			this.prepStatement.setString(6, u.get_teamSeason());
			

			System.out.println("Updated Team: " + u.get_teamID());

			// Disconnect to the database
			disconnectDB();

		} catch (SQLException m) {

			System.out.println("Error updating Team");
			System.out.println(m.getMessage());
			System.out.println(m.getErrorCode());
			System.out.println(m.getSQLState());
		}

	}

	public void deleteInfo(Team id) {

		try {

			connectDB();

			// Delete query
			String sql = "DELETE FROM Team WHERE id=?";

			this.prepStatement = this.connect.prepareStatement(sql);

			this.prepStatement.setInt(1, id.get_teamID());

			// Execute the query
			this.prepStatement.executeUpdate();

			System.out.println("Deleted Team: " + id.get_teamID());

			disconnectDB();
		} catch (SQLException m) {

			System.out.println("Error deleting Team");
			System.out.println(m.getMessage());
			System.out.println(m.getErrorCode());
			System.out.println(m.getSQLState());
		}
	}
	public ArrayList<Team> displayTeam(){
		ArrayList<Team> allTeams = new ArrayList <Team>();
		
		//Select all Teams
		String sql = "SELECT * FROM Teams";
		
		try {
			connectDB();
			
			this.statement = this.connect.createStatement();
			this.resultSet = this.prepStatement.executeQuery(sql);
			
			while(resultSet.next()) {
				Team team = new Team(resultSet.getString("_APIkey"),
						resultSet.getString("_teamCity"),
						resultSet.getString("_teamFullName"),
						 resultSet.getString("_teamConference"),
						 resultSet.getString(" _teamDivision"),
						 resultSet.getString(" _teamCoach"),
						 resultSet.getString(" _teamStadium"), 
						 resultSet.getString("_teamSeason"));
			
				allTeams.add(team);
			}
			disconnectDB();
		}
		catch(SQLException m) {
			
			System.out.println(m.getMessage());
			System.out.println(m.getErrorCode());
			System.out.println(m.getSQLState());
			
		}
		return allTeams;
	}
}
