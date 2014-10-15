
;====================
; Goodbye World!!!!! 
;====================
			*= $1000			; Memory address to load the code at.	
			ldx #$00;
LOOP		lda textcontent,x ; 
			sta $0400,x	
			inx	
			cpx #$0c
			BNE LOOP
			rts
						
;-------------------------------------- data portion
		
textcontent			!text "Goodbye World"
