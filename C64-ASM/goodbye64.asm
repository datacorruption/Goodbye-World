
;====================
; Goodbye World!!!!! 
;====================

; BASIC header to make it executable
; ===============================
*= $801 ; start at c64 basic start
!byte $b, $08, $EF, $00, $9E, $32, $30, $36,$31, $00, $00, $00 
; ===============================


			*= $1000			; Memory address to load the code at.

			ldx #$00
CLEAN		lda #$20 
			sta $0400,x	
			sta $0500,x
			sta $0600,x
			sta $0700,x
			dex	
			BNE CLEAN			
			ldx #$00;

WRITEXT			

LOOP		lda textcontent,x ; 
			sta $0500,x	
			inx	
			cpx #$0c
			BNE LOOP 
						
;-------------------------------------- data portion
		
textcontent			!text "Goodbye World"
