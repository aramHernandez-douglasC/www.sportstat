package test.com.Project.Controller;

import static org.junit.jupiter.api.Assertions.*;

import java.util.ArrayList;

import org.junit.Assert;
import org.junit.jupiter.api.Test;

import com.project.Boundary.TeamDAO;
import com.project.Entity.Team;

class UnitTestTeam {

	TeamDAO tdao = new TeamDAO();
	ArrayList <Team> teams = new ArrayList<Team>();
	
	
	@Test
	void DisplayTeamsTest() {
		teams = tdao.displayTeam();
		Assert.assertNotNull(teams);
	}
	
	

}
