package com.project.Boundary;

import java.sql.SQLException;
import java.util.ArrayList;

import com.project.Entity.Player;

public class PlayerDAO extends DatabaseHelper {

	public void addPlayer(Player newPlayer) {
		// Add a new player
		String sql = "INSERT INTO Player"
				+ "(_playerFirstName,_playerLastName,_playerPosition, _playerHeight, _playerWeight,"
				+ "_playerDob,_playerAge, _teamName, _playerNumber)" + "VALUES(?,?,?,?)";

		try {
			connectDB();

			this.prepStatement = this.connect.prepareStatement(sql);

			this.prepStatement.setString(1, newPlayer.get_playerFirstName());
			this.prepStatement.setString(2, newPlayer.get_playerLastName());
			this.prepStatement.setString(3, newPlayer.get_playerPosition());
			this.prepStatement.setString(4, newPlayer.get_playerHeight());
			this.prepStatement.setString(5, newPlayer.get_playerWeight());
			this.prepStatement.setString(6, newPlayer.get_playerDob());
			this.prepStatement.setInt(7, newPlayer.get_playerAge());
			this.prepStatement.setString(8, newPlayer.get_teamName());
			this.prepStatement.setInt(9, newPlayer.get_playerNumber());

			this.prepStatement.execute();

			System.out.println("New Player Added" + newPlayer.get_playerId());
			disconnectDB();

		} catch (SQLException m) {
			System.out.println("Error Connecting to the the database.");
			System.out.println(m.getMessage());
			System.out.println(m.getErrorCode());
			System.out.println(m.getSQLState());
		}

	}

	public void updatePlayer(Player updatePlayer) {

		// Update Query
		String sql = "UPDATE Player SET " + "_playerFirstName = ?" + "_playerLastName= ?" + "_playerPosition = ?"
				+ " _playerHeight = ?" + " _playerWeight = ?" + "_playerDob = ?" + "_playerAge = 6" + " _teamName= ?"
				+ " _playerNumber= ?" + "WHERE id = ?";

		try {

			connectDB();

			// Create the prepared statements
			this.prepStatement = this.connect.prepareStatement(sql);

			// Execute the statement
			this.prepStatement.executeUpdate();

			// Set the parameters
			this.prepStatement.setString(1, updatePlayer.get_playerFirstName());
			this.prepStatement.setString(2, updatePlayer.get_playerLastName());
			this.prepStatement.setString(3, updatePlayer.get_playerPosition());
			this.prepStatement.setString(4, updatePlayer.get_playerHeight());
			this.prepStatement.setString(5, updatePlayer.get_playerWeight());
			this.prepStatement.setString(6, updatePlayer.get_playerDob());
			this.prepStatement.setInt(7, updatePlayer.get_playerAge());
			this.prepStatement.setString(8, updatePlayer.get_teamName());
			this.prepStatement.setInt(9, updatePlayer.get_playerNumber());

			System.out.println("Updated Player: " + updatePlayer.get_playerId());

			// Disconnect to the database
			disconnectDB();

		} catch (SQLException m) {

			System.out.println("Error updating Player");
			System.out.println(m.getMessage());
			System.out.println(m.getErrorCode());
			System.out.println(m.getSQLState());
		}

	}

	public void deletePlayer(int playerId) {

		try {

			connectDB();

			// Delete query
			String sql = "DELETE FROM Player WHERE id=?";

			this.prepStatement = this.connect.prepareStatement(sql);

			this.prepStatement.setInt(1, playerId);

			// Execute the query
			this.prepStatement.executeUpdate();

			System.out.println("Deleted Student: " + playerId);

			disconnectDB();
		} catch (SQLException m) {

			System.out.println("Error deleting Player");
			System.out.println(m.getMessage());
			System.out.println(m.getErrorCode());
			System.out.println(m.getSQLState());
		}
	}
	public ArrayList<Player> displayPlayer(){
		ArrayList<Player> allPlayers = new ArrayList <Player>();
		
		//Select all players
		String sql = "SELECT * FROM Player";
		
		try {
			connectDB();
			
			this.statement = this.connect.createStatement();
			this.resultSet = this.prepStatement.executeQuery(sql);
			
			while(resultSet.next()) {
				Player player = new Player(resultSet.getInt("_playerId"), resultSet.getString("_playerFirstName"), resultSet.getString("_playerLastName"),
						 resultSet.getString("_playerPosition"),resultSet.getString(" _playerHeight"),resultSet.getString(" _playerWeight"), resultSet.getString("_playerDob"), 
						 resultSet.getInt("_playerAge"), resultSet.getString("_teamName"), resultSet.getInt("_playerNumber"));
			
				allPlayers.add(player);
			}
			disconnectDB();
		}
		catch(SQLException m) {
			
			System.out.println(m.getMessage());
			System.out.println(m.getErrorCode());
			System.out.println(m.getSQLState());
			
		}
		return allPlayers;
	}

}