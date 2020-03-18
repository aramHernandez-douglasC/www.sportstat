
package com.project.Boundary;

import com.project.Entity.User;
public class LoginDAO extends DatabaseHelper{
	public boolean checkLogin(String username, String password)
	{
		String query = "SELECT * FROM User WHERE _loginUser = ? AND _loginPassword = ?";
		
		try
		{
			connectDB();
			this.prepStatement = this.connect.prepareStatement(query);
			this.prepStatement.setString(1, username);
			this.prepStatement.setString(2, password);
			this.resultSet = this.prepStatement.executeQuery();
			
			if(this.resultSet.next())
			{
				return true;
			}
			
			disconnectDB();
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
		return false;
	}
	
}
