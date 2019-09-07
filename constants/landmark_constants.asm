; Landmarks indexes (see data/maps/landmarks.asm)
	const_def

; Wance landmarks
	const SPECIAL_MAP       ; 00
	const PAPRIKI_TOWN      ; 01
	const ROUTE_1           ; 0b
	const THE_HUMP          ; 19
	const ROUTE_2           ; 0c
	const BALMERO_CITY      ; 02
	const ROUTE_3           ; 0d
	const MALJORA_TOWN      ; 03
	const ROUTE_4           ; 0e
	const ROUTE_5           ; 0f
	const GRANPICE_CITY     ; 04
	const ROUTE_6           ; 10
	const ROUTE_7           ; 11
	const ANISET_TOWN       ; 05
	const ROUTE_8           ; 12
	const YENNE_OUTPOST     ; 06
	const ROUTE_9           ; 13
	const SESEYA_PORT       ; 07
	const ROUTE_10          ; 14
	const ROUTE_11          ; 15
	const CREZERA_TOWN      ; 08
	const ROUTE_12          ; 16
	const MELEGUETA_CITY    ; 09
	const ROUTE_13          ; 17
	const POKEMON_LEAGUE    ; 0a
	const ROUTE_14          ; 18

KANTO_LANDMARK EQU const_value

; used in CaughtData
GIFT_LOCATION  EQU $7e
EVENT_LOCATION EQU $7f

; Regions
	const_def
	const JOHTO_REGION ; 0
	const KANTO_REGION ; 1
NUM_REGIONS EQU const_value
