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
		String sql = "SELECT * FROM Team";
		
		try {
			connectDB();
			
			this.statement = this.connect.createStatement();
			this.resultSet = this.statement.executeQuery(sql);
			
			while(resultSet.next()) {
				Team team = new Team(resultSet.getString("_APIkey"),
						resultSet.getString("_teamCity"),
						resultSet.getString("_teamFullName"),
						 resultSet.getString("_teamConference"),
						 resultSet.getString("_teamDivision"),
						 resultSet.getString("_headCoach"),
						 resultSet.getString("_stadiumName"), 
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
	public ArrayList<Team> yourTeams(String username){
		ArrayList<Team> allTeams = new ArrayList <Team>();
		
		//Select all Teams
		// SELECT TrackList._teamName, Team._teamDivision, Team._teamConference
		// FROM TrackList INNER JOIN Team on Team._teamID = TrackList._teamID
		// WHERE _userName = "aram";   
		String sql = "SELECT TrackList._teamName, Team._teamDivision, Team._teamConference" 
		         +" FROM TrackList INNER JOIN Team on Team._teamID = TrackList._teamID "
				 + "WHERE _userName = ? "; 
		try {
			connectDB();
			
			this.prepStatement = this.connect.prepareStatement(sql);
			this.prepStatement.setString(1, username);
			this.resultSet = this.prepStatement.executeQuery();
			
			while(resultSet.next()) {
				Team team = new Team();
				team.set_teamFullName(resultSet.getString("TrackList._teamName"));
				team.set_teamDivision(resultSet.getString("Team._teamDivision"));
				team.set_teamConference(resultSet.getString("Team._teamConference"));
				
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
	public Team getTeam(String teamName) {
		
		Team team = new Team();
		
		String _APIkey = "";
		int _teamID = 0;
		String _teamCity= "";
		String _teamFullName= "";
		String _teamConference= "";
		String _teamDivision= "";
		String _teamCoach= "";
		String _teamStadium= "";
		String _teamSeason= "";
		
		
		
		String sql = "SELECT * FROM Team WHERE "+"_teamFullName = ?;";
		try {
			connectDB();	

			this.prepStatement = this.connect.prepareStatement(sql);
			this.prepStatement.setString(1, teamName);
			this.resultSet = this.prepStatement.executeQuery();
			
			
			
			
			
			
		    while(resultSet.next()){
		    	_APIkey = resultSet.getString("_APIkey");
		    	_teamID = resultSet.getInt("_teamID");
		    	_teamCity = resultSet.getString("_teamCity");
		    	_teamFullName = resultSet.getString("_teamFullName");
		    	_teamConference = resultSet.getString("_teamConference");
		    	_teamDivision = resultSet.getString("_teamDivision");
		    	_teamCoach = resultSet.getString("_headCoach");
		    	_teamStadium = resultSet.getString("_stadiumName");
		    	_teamSeason = resultSet.getString("_teamSeason");
			    
			     team.set_key(_APIkey);
			     team.set_teamID(_teamID);
			     team.set_teamCity(_teamCity);
			     team.set_teamFullName(_teamFullName);
			     team.set_teamConference(_teamConference);
			     team.set_teamDivision(_teamDivision);
			     team.set_teamCoach(_teamCoach);
			     team.set_teamStadium(_teamStadium);
			     team.set_teamSeason(_teamSeason);
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

}
