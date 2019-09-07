	object_const_def ; object_event constants
	const PAPRIKITOWN_FISHER
	
PaprikiTown_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
PaprikiFisherScript:
	jumptextfaceplayer Text_PaprikiTest

PlayersHouseSign:
	jumptext PlayersHouseSignText
	
MulleyStudioSign:
	jumptext MulleyStudioSignText
	
PaprikiTownSign:
	jumptext PaprikiTownSignText
	
PlayersHouseSignText:
	text "<PLAYER>'s House"
	done
	
MulleyStudioSignText:
	text "MULLEY #MON"
	line "STUDIO"
	
	para "Home of the most"
	line "fire lyrics in all"
	cont "of Wance!"
	done
	
PaprikiTownSignText:
	text "PAPRIKI TOWN"
	
	para "Where every day of"
	line "life has serious"
	cont "spice!"
	done
	
Text_PaprikiTest:
	text "SCRIPT PRINT TEST"
	done

PaprikiTown_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event 14,  5, MULLEY_STUDIO, 1
	warp_event  1,  5, PLAYERS_HOUSE_1F, 1
	warp_event  3, 15, PAPRIKI_HOUSE, 1
	
	db 0 ; coord events

	db 3 ; bg events
	bg_event  4,  6, BGEVENT_READ, PlayersHouseSign
	bg_event 11,  5, BGEVENT_READ, MulleyStudioSign
	bg_event  7, 11, BGEVENT_READ, PaprikiTownSign
	
	db 1 ; object events
    object_event 9,  8, SPRITE_FISHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PaprikiFisherScript, -1