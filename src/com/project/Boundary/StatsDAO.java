package com.project.Boundary;

import java.sql.SQLException;

import com.project.Entity.Stats;

public class StatsDAO extends DatabaseHelper{
	
public Stats getStat (String teamName) {
		
		Stats teamS = new Stats();
		
		
		int _teamID = 0;
		String _teamName = "";
		int _GP = 0;
		int _W = 0;
		int _L= 0;
		int _WIN = 0;
		int _MIN = 0;
		int _PTS = 0;
		int _FGM = 0;
		int _FGA = 0;
		int _FG = 0;
		int _OREB = 0;
		int _DREB = 0;
		int _REB = 0;
		int _AST = 0;
		int _TOV = 0;
		int _STL = 0;
		int _BLK = 0;
		int _BLKA = 0;
		int _PF = 0;
		int _PFD = 0;
		int _MoreLess = 0;
		
		
		
		String sql = "SELECT * FROM Statistics WHERE "+"_teamName = ?;";
		try {
			connectDB();	

			this.prepStatement = this.connect.prepareStatement(sql);
			this.prepStatement.setString(1, teamName);
			this.resultSet = this.prepStatement.executeQuery();
			
			
			
			
			
			
		    while(resultSet.next()){
		    	
		    	_teamID = resultSet.getInt("_teamID");
		    	_teamName= resultSet.getString("_teamName");
		    	_GP= resultSet.getInt("_GP");
		    	_W=resultSet.getInt("_W");
		    	_L=resultSet.getInt("_L");
		    	_WIN=resultSet.getInt("_WIN");
		    	_MIN=resultSet.getInt("_MIN");
		    	_PTS=resultSet.getInt("_PTS");
		    	_FGM=resultSet.getInt("_FGM");
		    	_FGA=resultSet.getInt("_FGA");
		    	_FG=resultSet.getInt("_FG");
		    	_OREB=resultSet.getInt("_OREB");
		    	_DREB=resultSet.getInt("_DREB");
		    	_REB=resultSet.getInt("_REB");
		    	_AST=resultSet.getInt("_AST");
		    	_TOV=resultSet.getInt("_TOV");
		    	_STL=resultSet.getInt("_STL");
		    	_BLK=resultSet.getInt("_BLK");
		    	_BLKA=resultSet.getInt("_BLKA");
		    	_PF=resultSet.getInt("_PF");
		    	_PFD=resultSet.getInt("_PFD");
		    	_MoreLess=resultSet.getInt("_MoreLess");

			    
			    teamS.set_AST(_AST);
			    teamS.set_BLK(_BLK);
			    teamS.set_BLKA(_BLKA);
			    teamS.set_DREB(_DREB);
			    teamS.set_FG(_FG);
			    teamS.set_FGA(_FGA);
			    teamS.set_FGM(_FGM);
			    teamS.set_GP(_GP);
			    teamS.set_L(_L);
			    teamS.set_MIN(_MIN);
			    teamS.set_MoreLess(_MoreLess);
			    teamS.set_OREB(_OREB);
			    teamS.set_PF(_PF);
			    teamS.set_PFD(_PFD);
			    teamS.set_PTS(_PTS);
			    teamS.set_REB(_REB);
			    teamS.set_STL(_STL);
			    teamS.set_teamID(_teamID);
			    teamS.set_teamName(_teamName);
			    teamS.set_TOV(_TOV);
			    teamS.set_W(_W);
			    teamS.set_WIN(_WIN);
			    
		    }
			

		    
			
			disconnectDB();

		}
		catch(SQLException m) {
			
			System.out.println(m.getMessage());
			System.out.println(m.getErrorCode());
			System.out.println(m.getSQLState());
			
		}
		return teamS;
	}

}
