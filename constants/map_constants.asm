newgroup: MACRO
const_value = const_value + 1
	enum_start 1
ENDM

map_const: MACRO
;\1: map id
;\2: width: in blocks
;\3: height: in blocks
GROUP_\1 EQU const_value
	enum MAP_\1
\1_WIDTH EQU \2
\1_HEIGHT EQU \3
ENDM

; map group ids
; `newgroup` indexes are for:
; - MapGroupPointers (see data/maps/maps.asm)
; - MapGroupRoofs (see data/maps/roofs.asm)
; - OutdoorSprites (see data/maps/outdoor_sprites.asm)
; - RoofPals (see gfx/tilesets/roofs.pal)
; `map_const` indexes are for the sub-tables of MapGroupPointers (see data/maps/maps.asm)
; Each map also has associated data:
; - attributes (see data/maps/attributes.asm)
; - blocks (see data/maps/blocks.asm)
; - scripts and events (see data/maps/scripts.asm)
	const_def

	newgroup                                                      ;  1 (Papriki Town)

	map_const PAPRIKI_TOWN,                                10, 9  ;  1
	map_const PLAYERS_HOUSE_1F,                             1, 1  ;  2
	map_const PLAYERS_HOUSE_2F,                             1, 1  ;  3
	map_const PAPRIKI_HOUSE,                                1, 1  ;  4
	map_const MULLEY_STUDIO,                                1, 1  ;  5
	map_const ROUTE_1,                                      1, 1  ;  6
	
	newgroup                                                      ;  2 (Balmero City)
	
	map_const BALMERO_CITY,                                 1, 1  ;  1
	map_const BALMERO_POKECENTER,                           1, 1  ;  2
	map_const BALMERO_GYM,                                  1, 1  ;  3
	map_const BALMERO_HOUSE_1,                              1, 1  ;  4
	map_const BALMERO_HOUSE_2,                              1, 1  ;  5
	map_const BALMERO_HOUSE_3,                              1, 1  ;  6
	map_const ROUTE_2,                                      1, 1  ;  7
	map_const BALMERO_GATE,                                 1, 1  ;  8
	
	newgroup                                                      ;  3 (Maljora Town)
	
	map_const MALJORA_TOWN,                                 1, 1  ;  1
	map_const MALJORA_POKECENTER,                           1, 1  ;  2
	map_const MALJORA_HOUSE_1,                              1, 1  ;  3
	map_const MALJORA_HOUSE_2,                              1, 1  ;  4
	map_const ROUTE_3,                                      1, 1  ;  5
	map_const MALJORA_GATE,                                 1, 1  ;  6
	
	newgroup                                                      ;  4 (Granpice City)
	
	map_const GRANPICE_CITY,                                1, 1  ;  1
	map_const GRANPICE_POKECENTER,                          1, 1  ;  2
	map_const GRANPICE_GYM,                                 1, 1  ;  3
	map_const GRANPICE_HOUSE_1,                             1, 1  ;  4
	map_const GRANPICE_HOUSE_2,                             1, 1  ;  5
	map_const GRANPICE_TOWER_1_1F,                          1, 1  ;  6
	map_const GRANPICE_TOWER_1_2F,                          1, 1  ;  7
	map_const GRANPICE_TOWER_1_3F,                          1, 1  ;  8
	map_const GRANPICE_TOWER_2_1F,                          1, 1  ;  9
	map_const GRANPICE_TOWER_2_2F,                          1, 1  ;  10
	map_const GRANPICE_TOWER_2_3F,                          1, 1  ;  11
	map_const GRANPICE_TOWER_3_1F,                          1, 1  ;  12
	map_const GRANPICE_TOWER_3_2F,                          1, 1  ;  13
	map_const GRANPICE_TOWER_3_3F,                          1, 1  ;  14
	map_const GRANPICE_DEPT_STORE_1F,                       1, 1  ;  15
	map_const GRANPICE_DEPT_STORE_2F,                       1, 1  ;  16
	map_const GRANPICE_DEPT_STORE_3F,                       1, 1  ;  17
	map_const GRANPICE_DEPT_STORE_4F,                       1, 1  ;  18
	map_const GRANPICE_DEPT_STORE_5F,                       1, 1  ;  19
	map_const GRANPICE_DEPT_STORE_6F,                       1, 1  ;  20
	map_const GRANPICE_DEPT_STORE_ELEVATOR,                 1, 1  ;  21
	map_const MELODY_HALL,                                  1, 1  ;  22
	map_const ROUTE_4,                                      1, 1  ;  23
	map_const ROUTE_5,                                      1, 1  ;  24
	map_const ROUTE_6,                                      1, 1  ;  25
	
	newgroup                                                      ;  5 (Aniset Town)
	
	map_const ANISET_TOWN,                                  1, 1  ;  1
	map_const ANISET_POKECENTER,                            1, 1  ;  2
	map_const ANISET_GYM,                                   1, 1  ;  3
	map_const ANISET_HOUSE_1,                               1, 1  ;  4
	map_const ANISET_HOUSE_2,                               1, 1  ;  5
	map_const ANISET_MARKET,                                1, 1  ;  6
	map_const ROUTE_7,                                      1, 1  ;  7
	map_const ANISET_GATE,                                  1, 1  ;  8
	
	newgroup                                                      ;  6 (Yenne Outpost)
	
	map_const YENNE_OUTPOST,                                1, 1  ;  1
	map_const YENNE_POKECENTER,                             1, 1  ;  2
	map_const YENNE_CARAVAN_1,                              1, 1  ;  3
	map_const YENNE_CARAVAN_2,                              1, 1  ;  4
	map_const YENNE_CARAVAN_3,                              1, 1  ;  5
	map_const ROUTE_8,                                      1, 1  ;  6
	map_const ROUTE_9,                                      1, 1  ;  7
	
	newgroup                                                      ;  7 (Seseya Port)
	
	map_const SESEYA_PORT,                                  1, 1  ;  1
	map_const SESEYA_POKECENTER,                            1, 1  ;  2
	map_const SESEYA_GYM,                                   1, 1  ;  3
	map_const SESEYA_HOUSE_1,                               1, 1  ;  4
	map_const SESEYA_HOUSE_2,                               1, 1  ;  5
	map_const GAME_CORNER,                                  1, 1  ;  6
	map_const ROUTE_10,                                     1, 1  ;  7
	map_const SESEYA_GATE,                                  1, 1  ;  8
	
	newgroup                                                      ;  8 (Crezera Town)
	
	map_const CREZERA_TOWN,                                 1, 1  ;  1
	map_const CREZERA_POKECENTER,                           1, 1  ;  2
	map_const CREZERA_GYM,                                  1, 1  ;  3
	map_const CREZERA_HOUSE_1,                              1, 1  ;  4
	map_const CREZERA_HOUSE_2,                              1, 1  ;  5
	map_const CREZERA_HOUSE_SECRET,                         1, 1  ;  6
	map_const ROUTE_11,                                     1, 1  ;  7
	map_const ROUTE_12,                                     1, 1  ;  8
	map_const GRANPICE_GATE,                                1, 1  ;  9
	
	newgroup                                                      ;  9 (Melegueta City)
	
	map_const MELEGUETA_CITY,                               1, 1  ;  1
	map_const MELEGUETA_POKECENTER,                         1, 1  ;  2
	map_const MELEGUETA_GYM,                                1, 1  ;  3
	map_const MELEGUETA_HOUSE_1,                            1, 1  ;  4
	map_const MELEGUETA_HOUSE_2,                            1, 1  ;  5
	map_const MELEGUETA_HOUSE_3,                            1, 1  ;  6
	map_const MELEGUETA_HOUSE_4,                            1, 1  ;  7
	map_const MELEGUETA_TOWER_1_1F,                         1, 1  ;  8
	map_const MELEGUETA_TOWER_1_2F,                         1, 1  ;  9
	map_const MELEGUETA_TOWER_1_3F,                         1, 1  ;  10
	map_const MELEGUETA_TOWER_2_1F,                         1, 1  ;  11
	map_const MELEGUETA_TOWER_2_2F,                         1, 1  ;  12
	map_const MELEGUETA_TOWER_2_3F,                         1, 1  ;  13
	map_const ROUTE_13,                                     1, 1  ;  14
	map_const MELEGUETA_GATE,                               1, 1  ;  15
	
	newgroup                                                      ;  10 (Pokémon League)
	
	map_const ROUTE_14,                                     1, 1  ;  1
	map_const LEAGUE_POKECENTER,                            1, 1  ;  2
	map_const LEAGUE_BASE_ROOM,                             1, 1  ;  3
	map_const E4_ROOM_1,                                    1, 1  ;  4
	map_const E4_ROOM_2,                                    1, 1  ;  5
	map_const E4_ROOM_3,                                    1, 1  ;  6
	map_const E4_ROOM_4,                                    1, 1  ;  7
	map_const CHAMPS_ROOM,                                   1, 1  ;  8
	map_const HALL_OF_FAME,                                 1, 1  ;  9
