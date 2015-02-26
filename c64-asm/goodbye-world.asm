;====================
; Goodbye World!!!!! 
;====================

!to "goodbye-world.prg", cbm

;BASIC loader
*= $801 ; start at c64 basic start
!byte $b, $08, $EF, $00, $9E, $32, $30, $36,$31, $00, $00, $00 ; basic header

			ldx #$00;
LOOP		lda textcontent,x ; 
			sta $0400,x	
			inx	
			cpx #$0d
			BNE LOOP
			rts
					
;end of main loop

;-------------------------------------- data portion
		
textcontent			!SCR "Goodbye World"

