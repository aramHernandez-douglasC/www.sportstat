package test.com.Project.Controller;

import static org.junit.jupiter.api.Assertions.*;

import java.util.ArrayList;
import java.util.Date;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import com.project.Boundary.*;
import com.project.Entity.*;

import junit.framework.Assert;


class IntegrationTestTeams {
	
	Team team = new Team();
	ArrayList<Schedule> allSchedule = new ArrayList<Schedule>();
	ArrayList<Schedule> teamSchedule = new ArrayList<Schedule>();
	ArrayList<Team> trackTeams = new ArrayList<Team>();
	
	
	TeamDAO tdao = new TeamDAO();
	UserDAO udao = new UserDAO();
	Schedule sch = new Schedule();
	
	User user;
	
	@BeforeEach
	void setUp() throws Exception {
		Date dob = new Date(90, 03, 31);
		user = new User("Louis" ,dob , "Vancouver", "BC", "Canada", "louis", "abcd");
		udao.addInfo(user);	
		
	}

	@Test
	void AllScheduleTest() {
		allSchedule = tdao.scheduleTeams();
		Assert.assertNotNull(allSchedule);
	}
	@Test
	void SingleScheduleTest() {
		teamSchedule = tdao.singleSchedule(team);
		Assert.assertNotNull(teamSchedule);
	}
	@Test
	void TrackTeamsTest() {
		team = tdao.getTeam("Drongo, fork-tailed");
	    udao.trackTeam(user, team);
	    
	    trackTeams = tdao.yourTeams(user.get_loginUser());
		Assert.assertNotNull(trackTeams);
	}
	
	@Test
	void UnTrackTeamsTest() {
		
		team = tdao.getTeam("Drongo, fork-tailed");
	    udao.untrackTeam(user, team);
	    
	    trackTeams = tdao.yourTeams(user.get_loginUser());
	    
		Assert.assertTrue(trackTeams.isEmpty());;
	}
	
	
	

}
