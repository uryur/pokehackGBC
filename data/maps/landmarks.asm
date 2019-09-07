landmark: MACRO
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
; entries correspond to constants/landmark_constants.asm
	dbbw       0,   0, SpecialMapName
	dbbw      56,  96, PaprikiTownName
	dbbw      56,  88, Route1Name
	dbbw      56,  80, TheHumpName
	dbbw      56,  64, Route2Name
	dbbw      56,  56, BalmeroCityName
	dbbw      64,  56, Route3Name
	dbbw      72,  48, MaljoraTownName
	dbbw      72,  40, Route4Name
    dbbw      88,  40, Route5Name
    dbbw      96,  40, GranpiceCityName
    dbbw      96,  32, Route6Name
    dbbw     104,  40, Route7Name
    dbbw     136,  40, AnisetTownName
    dbbw     136,  48, Route8Name
    dbbw     136,  56, YenneOutpostName
    dbbw     136,  64, Route9Name
    dbbw     136,  80, SeseyaPortName
    dbbw     120,  80, Route10Name
	dbbw     104,  80, Route11Name
    dbbw      96,  80, CrezeraTownName
    dbbw      96,  48, Route12Name
	dbbw      32,  56, Route13Name
	dbbw      24,  56, MeleguetaCityName
	dbbw      16,  56, Route14Name
	dbbw      16,  40, PokemonLeagueName

SpecialMapName:      db "SPECIAL@"
PaprikiTownName:     db "PAPRIKI¯TOWN@"
BalmeroCityName:     db "BALMERO¯CITY@"
MaljoraTownName:     db "MALJORA¯TOWN@"
GranpiceCityName:    db "GRANPICE¯CITY@"
AnisetTownName:      db "ANISET¯TOWN@"
YenneOutpostName:    db "YENNE¯OUTPOST@"
SeseyaPortName:      db "SESEYA¯PORT@"
CrezeraTownName:     db "CREZERA¯TOWN@"
MeleguetaCityName:   db "MELEGUETA¯CITY@"
PokemonLeagueName:   db "POKéMON¯LEAGUE@"
Route1Name:          db "ROUTE 1@"
Route2Name:          db "ROUTE 2@"
Route3Name:          db "ROUTE 3@"
Route4Name:          db "ROUTE 4@"
Route5Name:          db "ROUTE 5@"
Route6Name:          db "ROUTE 6@"
Route7Name:          db "ROUTE 7@"
Route8Name:          db "ROUTE 8@"
Route9Name:          db "ROUTE 9@"
Route10Name:         db "ROUTE 10@"
Route11Name:         db "ROUTE 11@"
Route12Name:         db "ROUTE 12@"
Route13Name:         db "ROUTE 13@"
Route14Name:         db "ROUTE 14@"
TheHumpName:         db "THE HUMP@"
