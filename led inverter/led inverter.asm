
_main:

;led inverter.c,9 :: 		void main() {
;led inverter.c,10 :: 		TRISB=0;//makes portB output port
	CLRF       TRISB+0
;led inverter.c,11 :: 		PORTB=0xff;
	MOVLW      255
	MOVWF      PORTB+0
;led inverter.c,12 :: 		while(1){
L_main0:
;led inverter.c,13 :: 		PORTB=~PORTB;
	COMF       PORTB+0, 1
;led inverter.c,14 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
;led inverter.c,15 :: 		}
	GOTO       L_main0
;led inverter.c,16 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
