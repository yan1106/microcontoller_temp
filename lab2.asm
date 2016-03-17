#include "tx3703.inc"

        org 00h                 
        ajmp Start
        org 400h
LED_Table:
	db 11000000b
	db 11111001b
	db 10100100b
	db 10110000b	
	db 10011001b
	db 10010010b
	db 10000011b	
	db 11011000b
	db 10000000b
	db 10011000b


    MOV		DPTR,#LED_Table
Start: 
		mov p0oe,#11111111b
		mov p2oe,#11111111b
		mov p2,#11111110b
		mov p0,#11111111b

		MOV DPTR,#LED_Table
S1:

		MOV A,#0
		MOVC A,@A+DPTR
		MOV p0,A
		acall delay_1s
		inc DPTR
		ajmp S1 				

 delay_1s:
	MOV R5,#50
  D1:	
    MOV R6,#25
	DJNZ R6,$
	DJNZ R5,D1
	RET
	END