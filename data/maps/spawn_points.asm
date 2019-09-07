spawn: MACRO
; map, x, y
	map_id \1
	db \2, \3
ENDM

SpawnPoints:
; entries correspond to SPAWN_* constants
	spawn PAPRIKI_TOWN,                1,  1
	spawn N_A,                        -1, -1