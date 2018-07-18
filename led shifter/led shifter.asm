
_main:

;led shifter.c,26 :: 		void main() {
;led shifter.c,27 :: 		TRISB=0;//makes portB output port
	CLRF       TRISB+0
;led shifter.c,28 :: 		PORTB=1;
	MOVLW      1
	MOVWF      PORTB+0
;led shifter.c,30 :: 		while(1){
L_main0:
;led shifter.c,32 :: 		Delay_ms(100);
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
;led shifter.c,33 :: 		if(dir)
	BTFSS      _dir+0, BitPos(_dir+0)
	GOTO       L_main3
;led shifter.c,35 :: 		PORTB<<=1;
	MOVF       PORTB+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;led shifter.c,36 :: 		if(PORTB==0) PORTB=64,dir=0;//128 if you need 2 delays
	MOVF       PORTB+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main4
	MOVLW      64
	MOVWF      PORTB+0
	BCF        _dir+0, BitPos(_dir+0)
L_main4:
;led shifter.c,37 :: 		}
	GOTO       L_main5
L_main3:
;led shifter.c,40 :: 		PORTB>>=1;
	MOVF       PORTB+0, 0
	MOVWF      R0+0
	RRF        R0+0, 1
	BCF        R0+0, 7
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;led shifter.c,41 :: 		if(PORTB==0) PORTB=2,dir=1;//1 if you need 2 delays
	MOVF       PORTB+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main6
	MOVLW      2
	MOVWF      PORTB+0
	BSF        _dir+0, BitPos(_dir+0)
L_main6:
;led shifter.c,42 :: 		}
L_main5:
;led shifter.c,43 :: 		}
	GOTO       L_main0
;led shifter.c,44 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
