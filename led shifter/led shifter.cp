#line 1 "D:/preferences/mikroC/sec 1 led shifter/led shifter.c"
#line 25 "D:/preferences/mikroC/sec 1 led shifter/led shifter.c"
bit dir;
void main() {
 TRISB=0;
 PORTB=1;

 while(1){

 Delay_ms(100);
 if(dir)
 {
 PORTB<<=1;
 if(PORTB==0) PORTB=64,dir=0;
 }
 else
 {
 PORTB>>=1;
 if(PORTB==0) PORTB=2,dir=1;
 }
 }
}
