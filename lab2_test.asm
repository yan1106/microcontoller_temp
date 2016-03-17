#include "tx3703.inc"

       
		
	zero 	EQU 	11000000b;
	one  	EQU		11111001b;
	two  	EQU		10100100b;
	three 	EQU		10110000b;
	four  	EQU		10011001b;	
	five  	EQU		10010010b;	
	six  	EQU		10000011b;
	seven 	EQU		11011000b;	
	eight  	EQU		10000000b;
	night	EQU		10011000b;
		
					
     org 00h                 
     ajmp Start
     org 400h
Start: 
		mov p0oe,#11111111b
		mov p2oe,#11111111b
		mov p2,#11111110b
		mov p0,#11111111b

S1:

		MOV P0,#zero;
		acall  delay_1s;
		MOV P0,#two;
		acall  delay_1s;
		MOV P0,#three;
		acall  delay_1s;
		MOV P0,#four;
		acall  delay_1s;
		MOV P0,#five;
		acall  delay_1s;
		MOV P0,#six;
		acall  delay_1s;
		MOV P0,#seven;
		acall  delay_1s;
		MOV P0,#eight;
		acall  delay_1s;
		MOV P0,#night;
		acall  delay_1s;
		ajmp S1 				

 delay_1s:
	MOV R5,#50
  D1:	
    MOV R6,#25
	DJNZ R6,$
	DJNZ R5,D1
	RET
	END