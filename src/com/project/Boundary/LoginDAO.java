package com.project.Boundary;

import com.project.Entity.Login;
public class LoginDAO extends DatabaseHelper{
	public void checkLogin(Login loginToken)
	{
		String query = "SELECT * FROM Login WHERE user = ? AND password = ?";
		
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
