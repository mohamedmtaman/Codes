#line 1 "D:/preferences/mikroC/sec 1 inverter/led inverter.c"








void main() {
 TRISB=0;
 PORTB=0xff;
 while(1){
 PORTB=~PORTB;
 Delay_ms(100);
 }
}
