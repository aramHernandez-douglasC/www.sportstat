package com.project.Entity;

public class Stats {
	
	private int _statsID;
	private int _teamID;
	private String _teamName;
	private int _GP;
	private int _W;
	private int _L;
	private int _WIN;
	private int _MIN;
	private int _PTS;
	private int _FGM;
	private int _FGA;
	private int _FG;
	private int _OREB;
	private int _DREB;
	private int _REB;
	private int _AST;
	private int _TOV;
	private int _STL;
	private int _BLK;
	private int _BLKA;
	private int _PF;
	private int _PFD;
	private int _MoreLess;
	
	
	
	public Stats(int _statsID, int _teamID, String _teamName, int _GP, int _W, int _L, int _WIN, int _MIN, int _PTS,
			int _FGM, int _FGA, int _FG, int _OREB, int _DREB, int _REB, int _AST, int _TOV, int _STL, int _BLK,
			int _BLKA, int _PF, int _PFD, int _MoreLess) {
		super();
		this._statsID = _statsID;
		this._teamID = _teamID;
		this._teamName = _teamName;
		this._GP = _GP;
		this._W = _W;
		this._L = _L;
		this._WIN = _WIN;
		this._MIN = _MIN;
		this._PTS = _PTS;
		this._FGM = _FGM;
		this._FGA = _FGA;
		this._FG = _FG;
		this._OREB = _OREB;
		this._DREB = _DREB;
		this._REB = _REB;
		this._AST = _AST;
		this._TOV = _TOV;
		this._STL = _STL;
		this._BLK = _BLK;
		this._BLKA = _BLKA;
		this._PF = _PF;
		this._PFD = _PFD;
		this._MoreLess = _MoreLess;
	}
	
	
	public Stats(int _teamID, String _teamName, int _GP, int _W, int _L, int _WIN, int _MIN, int _PTS, int _FGM,
			int _FGA, int _FG, int _OREB, int _DREB, int _REB, int _AST, int _TOV, int _STL, int _BLK, int _BLKA,
			int _PF, int _PFD, int _MoreLess) {
		super();
		this._teamID = _teamID;
		this._teamName = _teamName;
		this._GP = _GP;
		this._W = _W;
		this._L = _L;
		this._WIN = _WIN;
		this._MIN = _MIN;
		this._PTS = _PTS;
		this._FGM = _FGM;
		this._FGA = _FGA;
		this._FG = _FG;
		this._OREB = _OREB;
		this._DREB = _DREB;
		this._REB = _REB;
		this._AST = _AST;
		this._TOV = _TOV;
		this._STL = _STL;
		this._BLK = _BLK;
		this._BLKA = _BLKA;
		this._PF = _PF;
		this._PFD = _PFD;
		this._MoreLess = _MoreLess;
	}

	
	

	public Stats() {
		super();
	}


	public int get_statsID() {
		return _statsID;
	}
	public void set_statsID(int _statsID) {
		this._statsID = _statsID;
	}
	public int get_teamID() {
		return _teamID;
	}
	public void set_teamID(int _teamID) {
		this._teamID = _teamID;
	}
	public String get_teamName() {
		return _teamName;
	}
	public void set_teamName(String _teamName) {
		this._teamName = _teamName;
	}
	public int get_GP() {
		return _GP;
	}
	public void set_GP(int _GP) {
		this._GP = _GP;
	}
	public int get_W() {
		return _W;
	}
	public void set_W(int _W) {
		this._W = _W;
	}
	public int get_L() {
		return _L;
	}
	public void set_L(int _L) {
		this._L = _L;
	}
	public int get_WIN() {
		return _WIN;
	}
	public void set_WIN(int _WIN) {
		this._WIN = _WIN;
	}
	public int get_MIN() {
		return _MIN;
	}
	public void set_MIN(int _MIN) {
		this._MIN = _MIN;
	}
	public int get_PTS() {
		return _PTS;
	}
	public void set_PTS(int _PTS) {
		this._PTS = _PTS;
	}
	public int get_FGM() {
		return _FGM;
	}
	public void set_FGM(int _FGM) {
		this._FGM = _FGM;
	}
	public int get_FGA() {
		return _FGA;
	}
	public void set_FGA(int _FGA) {
		this._FGA = _FGA;
	}
	public int get_FG() {
		return _FG;
	}
	public void set_FG(int _FG) {
		this._FG = _FG;
	}
	public int get_OREB() {
		return _OREB;
	}
	public void set_OREB(int _OREB) {
		this._OREB = _OREB;
	}
	public int get_DREB() {
		return _DREB;
	}
	public void set_DREB(int _DREB) {
		this._DREB = _DREB;
	}
	public int get_REB() {
		return _REB;
	}
	public void set_REB(int _REB) {
		this._REB = _REB;
	}
	public int get_AST() {
		return _AST;
	}
	public void set_AST(int _AST) {
		this._AST = _AST;
	}
	public int get_TOV() {
		return _TOV;
	}
	public void set_TOV(int _TOV) {
		this._TOV = _TOV;
	}
	public int get_STL() {
		return _STL;
	}
	public void set_STL(int _STL) {
		this._STL = _STL;
	}
	public int get_BLK() {
		return _BLK;
	}
	public void set_BLK(int _BLK) {
		this._BLK = _BLK;
	}
	public int get_BLKA() {
		return _BLKA;
	}
	public void set_BLKA(int _BLKA) {
		this._BLKA = _BLKA;
	}
	public int get_PF() {
		return _PF;
	}
	public void set_PF(int _PF) {
		this._PF = _PF;
	}
	public int get_PFD() {
		return _PFD;
	}
	public void set_PFD(int _PFD) {
		this._PFD = _PFD;
	}
	public int get_MoreLess() {
		return _MoreLess;
	}
	public void set_MoreLess(int _MoreLess) {
		this._MoreLess = _MoreLess;
	}
	

}
