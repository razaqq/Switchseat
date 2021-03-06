sleep 10;
{
    if (typeOf _x in ["CH_47F_EP1_DZ","Mi17_DZ","UH60M_EP1_DZ","UH60M_EP1","MH60S","UH1H_DZ","UH1Y_DZ"]) then { //Armed Helis with 10+ seats
        nul = _x addAction ["To Pilot's Seat","fixes\switchseat.sqf",["pilot"],5,false,true,"","player in (assignedVehicle _target) and driver _target != player"];
        nul = _x addAction ["To Gunner's Seat","fixes\switchseat.sqf",["gunner"],5,false,true,"","driver _target == player"];
        nul = _x addAction ["To Backseat","fixes\switchseat.sqf",["back"],5,false,true,"","driver _target == player"];
    };
 
    if (typeOf _x in ["Ka60_PMC","Mi17_Civilian_DZ","UH60M_MEV_EP1"]) then { //Unarmed Helis with 10+ seats
        nul = _x addAction ["To Pilot's Seat","fixes\switchseat.sqf",["pilot"],5,false,true,"","player in (assignedVehicle _target) and driver _target != player"];
        nul = _x addAction ["To Backseat","fixes\switchseat.sqf",["back"],5,false,true,"","driver _target == player"];
    };
 
    if (typeOf _x in ["AH6X_DZ","AH6X_EP1","AH6J_EP1","AH6J","GNT_C185","GNT_C185C","GNT_C185F","GNT_C185R","GNT_C185U"]) then { //Unarmed Helis with 2 seats (littlebirds and chessna for epoch)
        nul = _x addAction ["To Pilot's Seat","fixes\switchseat.sqf",["pilot"],5,false,true,"","player in (assignedVehicle _target) and driver _target != player"];
        nul = _x addAction ["To Backseat","fixes\switchseat.sqf",["backlittle"],5,false,true,"","driver _target == player"];
    };
 
    if (typeOf _x in ["Ka137_MG_PMC"]) then { //Armed Helis with 2 seats (ka137)
        nul = _x addAction ["To Pilot's Seat","fixes\switchseat.sqf",["pilot"],5,false,true,"","player in (assignedVehicle _target) and driver _target != player"];
        nul = _x addAction ["To Gunner's Seat","fixes\switchseat.sqf",["gunner"],5,false,true,"","driver _target == player"];
    };
 
    if (typeOf _x in ["MH6J_DZ","MH6J_EP1","MH6J"]) then { //Unarmed Helis with <7 seats, but not <2 (3-7  seats)
        nul = _x addAction ["To Pilot's Seat","fixes\switchseat.sqf",["pilot"],5,false,true,"","player in (assignedVehicle _target) and driver _target != player"];
        nul = _x addAction ["To Backseat","fixes\switchseat.sqf",["backmedium"],5,false,true,"","driver _target == player"];
    };
} forEach (vehicles);
