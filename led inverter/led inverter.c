
//hs oscillator
//reset pin
//watchdog timer => software reset (turn off then on)
//power up timer => protects from high power
//brown out reset => protects from low power
//memory code protection
//flash program memory write => client can modify the code
void main() {
       TRISB=0;//makes portB output port
       PORTB=0xff;
       while(1){
             PORTB=~PORTB;
             Delay_ms(100);
       }
}