package com.project.Entity;

public class TacticsCoach {
	private int _tacticsCoachId;
	private String _headCoach;
	private String _offensiveCoordinator;
	private String _deffensiveCoordinator;
	private String _specialTeamsCoach;
	
	public TacticsCoach(int _tacticsCoachId, String _headCoach, String _offensiveCoordinator,
			String _deffensiveCoordinator, String _specialTeamsCoach) {
		super();
		this._tacticsCoachId = _tacticsCoachId;
		this._headCoach = _headCoach;
		this._offensiveCoordinator = _offensiveCoordinator;
		this._deffensiveCoordinator = _deffensiveCoordinator;
		this._specialTeamsCoach = _specialTeamsCoach;
	}

	public int get_tacticsCoachId() {
		return _tacticsCoachId;
	}

	public void set_tacticsCoachId(int _tacticsCoachId) {
		this._tacticsCoachId = _tacticsCoachId;
	}

	public String get_headCoach() {
		return _headCoach;
	}

	public void set_headCoach(String _headCoach) {
		this._headCoach = _headCoach;
	}

	public String get_offensiveCoordinator() {
		return _offensiveCoordinator;
	}

	public void set_offensiveCoordinator(String _offensiveCoordinator) {
		this._offensiveCoordinator = _offensiveCoordinator;
	}

	public String get_deffensiveCoordinator() {
		return _deffensiveCoordinator;
	}

	public void set_deffensiveCoordinator(String _deffensiveCoordinator) {
		this._deffensiveCoordinator = _deffensiveCoordinator;
	}

	public String get_specialTeamsCoach() {
		return _specialTeamsCoach;
	}

	public void set_specialTeamsCoach(String _specialTeamsCoach) {
		this._specialTeamsCoach = _specialTeamsCoach;
	}

}
