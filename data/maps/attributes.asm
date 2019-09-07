map_attributes: MACRO
;\1: map name
;\2: map id
;\3: border block
;\4: connections: combo of NORTH, SOUTH, WEST, and/or EAST, or 0 for none
CURRENT_MAP_WIDTH = \2_WIDTH
CURRENT_MAP_HEIGHT = \2_HEIGHT
\1_MapAttributes::
	db \3
	db CURRENT_MAP_HEIGHT, CURRENT_MAP_WIDTH
	db BANK(\1_Blocks)
	dw \1_Blocks
	db BANK(\1_MapScripts) ; aka BANK(\1_MapEvents)
	dw \1_MapScripts
	dw \1_MapEvents
	db \4
ENDM

; Connections go in order: north, south, west, east
connection: MACRO
;\1: direction
;\2: map name
;\3: map id
;\4: offset of the target map relative to the current map
;    (x offset for east/west, y offset for north/south)

; LEGACY: Support for old connection macro
if _NARG == 6
	connection \1, \2, \3, (\4) - (\5)
else

; Calculate tile offsets for source (current) and target maps
_src = 0
_tgt = (\4) + 3
if _tgt < 0
_src = -_tgt
_tgt = 0
endc

if "\1" == "north"
_blk = \3_WIDTH * (\3_HEIGHT + -3) + _src
_map = _tgt
_win = (\3_WIDTH + 6) * \3_HEIGHT + 1
_y = \3_HEIGHT * 2 - 1
_x = (\4) * -2
_len = CURRENT_MAP_WIDTH + 3 - (\4)
if _len > \3_WIDTH
_len = \3_WIDTH
endc

elif "\1" == "south"
_blk = _src
_map = (CURRENT_MAP_WIDTH + 6) * (CURRENT_MAP_HEIGHT + 3) + _tgt
_win = \3_WIDTH + 7
_y = 0
_x = (\4) * -2
_len = CURRENT_MAP_WIDTH + 3 - (\4)
if _len > \3_WIDTH
_len = \3_WIDTH
endc

elif "\1" == "west"
_blk = (\3_WIDTH * _src) + \3_WIDTH + -3
_map = (CURRENT_MAP_WIDTH + 6) * _tgt
_win = (\3_WIDTH + 6) * 2 + -6
_y = (\4) * -2
_x = \3_WIDTH * 2 - 1
_len = CURRENT_MAP_HEIGHT + 3 - (\4)
if _len > \3_HEIGHT
_len = \3_HEIGHT
endc

elif "\1" == "east"
_blk = (\3_WIDTH * _src)
_map = (CURRENT_MAP_WIDTH + 6) * _tgt + CURRENT_MAP_WIDTH + 3
_win = \3_WIDTH + 7
_y = (\4) * -2
_x = 0
_len = CURRENT_MAP_HEIGHT + 3 - (\4)
if _len > \3_HEIGHT
_len = \3_HEIGHT
endc

else
fail "Invalid direction for 'connection'."
endc

	map_id \3
	dw \2_Blocks + _blk
	dw wOverworldMapBlocks + _map
	db _len - _src
	db \3_WIDTH
	db _y, _x
	dw wOverworldMapBlocks + _win
endc
ENDM

	map_attributes PaprikiTown, PAPRIKI_TOWN, $00, 0
	map_attributes PlayersHouse1F, PLAYERS_HOUSE_1F, $00, 0
	map_attributes PlayersHouse2F, PLAYERS_HOUSE_2F, $00, 0
	map_attributes PaprikiHouse, PAPRIKI_HOUSE, $00, 0
	map_attributes MulleyStudio, MULLEY_STUDIO, $00, 0
	map_attributes Route1, ROUTE_1, $00, 0
	
	map_attributes BalmeroCity, BALMERO_CITY, $00, 0
	map_attributes BalmeroPokecenter, BALMERO_POKECENTER, $00, 0
	map_attributes BalmeroGym, BALMERO_GYM, $00, 0
	map_attributes BalmeroHouse1, BALMERO_HOUSE_1, $00, 0
	map_attributes BalmeroHouse2, BALMERO_HOUSE_2, $00, 0
	map_attributes BalmeroHouse3, BALMERO_HOUSE_3, $00, 0
	map_attributes Route2, ROUTE_2, $00, 0
	map_attributes BalmeroGate, BALMERO_GATE, $00, 0
	
	map_attributes MaljoraTown, MALJORA_TOWN, $00, 0
	map_attributes MaljoraPokecenter, MALJORA_POKECENTER, $00, 0
	map_attributes MaljoraHouse1, MALJORA_HOUSE_1, $00, 0
	map_attributes MaljoraHouse2, MALJORA_HOUSE_2, $00, 0
	map_attributes Route3, ROUTE_3, $00, 0
	map_attributes MaljoraGate, MALJORA_GATE, $00, 0
	
	map_attributes GranpiceCity, GRANPICE_CITY, $00, 0
	map_attributes GranpicePokecenter, GRANPICE_POKECENTER, $00, 0
	map_attributes GranpiceGym, GRANPICE_GYM, $00, 0
	map_attributes GranpiceHouse1, GRANPICE_HOUSE_1, $00, 0
	map_attributes GranpiceHouse2, GRANPICE_HOUSE_2, $00, 0
	map_attributes GranpiceTower11F, GRANPICE_TOWER_1_1F, $00, 0
	map_attributes GranpiceTower12F, GRANPICE_TOWER_1_2F, $00, 0
	map_attributes GranpiceTower13F, GRANPICE_TOWER_1_3F, $00, 0
	map_attributes GranpiceTower21F, GRANPICE_TOWER_2_1F, $00, 0
	map_attributes GranpiceTower22F, GRANPICE_TOWER_2_2F, $00, 0
	map_attributes GranpiceTower23F, GRANPICE_TOWER_2_3F, $00, 0
	map_attributes GranpiceTower31F, GRANPICE_TOWER_3_1F, $00, 0
	map_attributes GranpiceTower32F, GRANPICE_TOWER_3_2F, $00, 0
	map_attributes GranpiceTower33F, GRANPICE_TOWER_3_3F, $00, 0
	map_attributes GranpiceDeptStore1F, GRANPICE_DEPT_STORE_1F, $00, 0
	map_attributes GranpiceDeptStore2F, GRANPICE_DEPT_STORE_2F, $00, 0
	map_attributes GranpiceDeptStore3F, GRANPICE_DEPT_STORE_3F, $00, 0
	map_attributes GranpiceDeptStore4F, GRANPICE_DEPT_STORE_4F, $00, 0
	map_attributes GranpiceDeptStore5F, GRANPICE_DEPT_STORE_5F, $00, 0
	map_attributes GranpiceDeptStore6F, GRANPICE_DEPT_STORE_6F, $00, 0
	map_attributes GranpiceDeptStoreElevator, GRANPICE_DEPT_STORE_ELEVATOR, $00, 0
	map_attributes MelodyHall, MELODY_HALL, $00, 0
	map_attributes Route4, ROUTE_4, $00, 0
	map_attributes Route5, ROUTE_5, $00, 0
	map_attributes Route6, ROUTE_6, $00, 0
	
	map_attributes AnisetTown, ANISET_TOWN, $00, 0
	map_attributes AnisetPokecenter, ANISET_POKECENTER, $00, 0
	map_attributes AnisetGym, ANISET_GYM, $00, 0
	map_attributes AnisetHouse1, ANISET_HOUSE_1, $00, 0
	map_attributes AnisetHouse2, ANISET_HOUSE_2, $00, 0
	map_attributes AnisetMarket, ANISET_MARKET, $00, 0
	map_attributes Route7, ROUTE_7, $00, 0
	map_attributes AnisetGate, ANISET_GATE, $00, 0
	
	map_attributes YenneOutpost, YENNE_OUTPOST, $00, 0
	map_attributes YennePokecenter, YENNE_POKECENTER, $00, 0
	map_attributes YenneCaravan1, YENNE_CARAVAN_1, $00, 0
	map_attributes YenneCaravan2, YENNE_CARAVAN_2, $00, 0
	map_attributes YenneCaravan3, YENNE_CARAVAN_3, $00, 0
	map_attributes Route8, ROUTE_8, $00, 0
	map_attributes Route9, ROUTE_9, $00, 0
	
	map_attributes SeseyaPort, SESEYA_PORT, $00, 0
	map_attributes SeseyaPokecenter, SESEYA_POKECENTER, $00, 0
	map_attributes SeseyaGym, SESEYA_GYM, $00, 0
	map_attributes SeseyaHouse1, SESEYA_HOUSE_1, $00, 0
	map_attributes SeseyaHouse2, SESEYA_HOUSE_2, $00, 0
	map_attributes GameCorner, GAME_CORNER, $00, 0
	map_attributes Route10, ROUTE_10, $00, 0
	map_attributes SeseyaGate, SESEYA_GATE, $00, 0
	
	map_attributes CrezeraTown, CREZERA_TOWN, $00, 0
	map_attributes CrezeraPokecenter, CREZERA_POKECENTER, $00, 0
	map_attributes CrezeraGym, CREZERA_GYM, $00, 0
	map_attributes CrezeraHouse1, CREZERA_HOUSE_1, $00, 0
	map_attributes CrezeraHouse2, CREZERA_HOUSE_2, $00, 0
	map_attributes CrezeraHouseSecret, CREZERA_HOUSE_SECRET, $00, 0
	map_attributes Route11, ROUTE_11, $00, 0
	map_attributes Route12, ROUTE_12, $00, 0
	map_attributes GranpiceGate, GRANPICE_GATE, $00, 0
	
	map_attributes MeleguetaCity, MELEGUETA_CITY, $00, 0
	map_attributes MeleguetaPokecenter, MELEGUETA_POKECENTER, $00, 0
	map_attributes MeleguetaGym, MELEGUETA_GYM, $00, 0
	map_attributes MeleguetaHouse1, MELEGUETA_HOUSE_1, $00, 0
	map_attributes MeleguetaHouse2, MELEGUETA_HOUSE_2, $00, 0
	map_attributes MeleguetaHouse3, MELEGUETA_HOUSE_3, $00, 0
	map_attributes MeleguetaHouse4, MELEGUETA_HOUSE_4, $00, 0
	map_attributes MeleguetaTower11F, MELEGUETA_TOWER_1_1F, $00, 0
	map_attributes MeleguetaTower12F, MELEGUETA_TOWER_1_2F, $00, 0
	map_attributes MeleguetaTower13F, MELEGUETA_TOWER_1_3F, $00, 0
	map_attributes MeleguetaTower21F, MELEGUETA_TOWER_2_1F, $00, 0
	map_attributes MeleguetaTower22F, MELEGUETA_TOWER_2_2F, $00, 0
	map_attributes MeleguetaTower23F, MELEGUETA_TOWER_2_3F, $00, 0
	map_attributes Route13, ROUTE_13, $00, 0
	map_attributes MeleguetaGate, MELEGUETA_GATE, $00, 0
	
	map_attributes Route14, ROUTE_14, $00, 0
	map_attributes LeaguePokecenter, LEAGUE_POKECENTER, $00, 0
	map_attributes LeagueBaseRoom, LEAGUE_BASE_ROOM, $00, 0
	map_attributes E4Room1, E4_ROOM_1, $00, 0
	map_attributes E4Room2, E4_ROOM_2, $00, 0
	map_attributes E4Room3, E4_ROOM_3, $00, 0
	map_attributes E4Room4, E4_ROOM_4, $00, 0
	map_attributes ChampsRoom, CHAMPS_ROOM, $00, 0
	map_attributes HallOfFame, HALL_OF_FAME, $00, 0