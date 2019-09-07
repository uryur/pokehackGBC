; MapGroupRoofs values; Roofs indexes
	const_def
	const ROOF_NEW_BARK  ; 0
	const ROOF_VIOLET    ; 1
	const ROOF_AZALEA    ; 2
	const ROOF_OLIVINE   ; 3
	const ROOF_GOLDENROD ; 4

MapGroupRoofs:
; entries correspond to map groups
; values are indexes for Roofs (see below)
	db -1             ;  0
	db ROOF_OLIVINE   ;  1 (Olivine)
	db ROOF_AZALEA    ;  2 (Mahogany)
	db ROOF_NEW_BARK  ;  3
	db ROOF_GOLDENROD ;  4 (Ecruteak)
	db ROOF_AZALEA    ;  5 (Blackthorn)
	db ROOF_VIOLET    ;  6
	db ROOF_VIOLET    ;  7
	db ROOF_OLIVINE   ;  8 (Azalea)
	db ROOF_AZALEA    ;  9 (Lake of Rage)
	db ROOF_VIOLET    ; 10 (Violet)

Roofs:
; entries correspond to ROOF_* constants
INCBIN "gfx/tilesets/roofs/new_bark.2bpp"
INCBIN "gfx/tilesets/roofs/violet.2bpp"
INCBIN "gfx/tilesets/roofs/azalea.2bpp"
INCBIN "gfx/tilesets/roofs/olivine.2bpp"
INCBIN "gfx/tilesets/roofs/goldenrod.2bpp"
