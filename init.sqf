//######UPSMON STUFF######


//by psycho WOUNDING SYSTEM AIS INJURY
["%1 --- Executing TcB AIS init.sqf",diag_ticktime] call BIS_fnc_logFormat;
enableSaving [false,false];
enableTeamswitch false;


//Compilation of MarkerManager(MMS)
MMS = compile preprocessFile "MarkerManager.sqf";

//Variables to see what city/villages and military sides are. If "true" city is Occupied by OPFOR.

MolosOPFORPresent = 0;
MolosBLUFORPresent = 0;
MolosAirfieldOPFORPresent = 0;
MolosAirfieldBLUFORPresent = 0;
MolosBayOPFORPresent = 0;
MolosBayBLUFORPresent = 0;





// TcB AIS Wounding System --------------------------------------------------------------------------
if (!isDedicated) then {
	TCB_AIS_PATH = "ais_injury\";
	{[_x] call compile preprocessFile (TCB_AIS_PATH+"init_ais.sqf")} forEach (if (isMultiplayer) then {playableUnits} else {switchableUnits});		// execute for every playable unit
	
	//{[_x] call compile preprocessFile (TCB_AIS_PATH+"init_ais.sqf")} forEach (units group player);													// only own group - you cant help strange group members
	
	//{[_x] call compile preprocessFile (TCB_AIS_PATH+"init_ais.sqf")} forEach [p1,p2,p3,p4,p5];														// only some defined units
};
// --------------------------------------------------------------------------------------------------------------
