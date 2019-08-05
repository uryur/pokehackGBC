	object_const_def ; object_event constants
	const PAPRIKITOWN_FISHER
	
PaprikiTown_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

PaprikiTown_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 14,  5, ELMS_LAB, 1
	warp_event  1,  5, PLAYERS_HOUSE_1F, 1
	warp_event  3, 15, PLAYERS_NEIGHBORS_HOUSE, 1
	warp_event 13, 11, ELMS_HOUSE, 1
	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
