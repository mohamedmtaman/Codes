//reciprocating leds
bit dir;
void main() {
       TRISB=0;//makes portB output port
       PORTB=1;

       while(1){

             Delay_ms(100);
             if(dir)
             {
             PORTB<<=1;
             if(PORTB==0) PORTB=64,dir=0;//128 if you need 2 delays
             }
             else
             {
             PORTB>>=1;
             if(PORTB==0) PORTB=2,dir=1;//1 if you need 2 delays
             }
       }
}

/*
//one direction pyramid
char temp1;
char temp2;
void main() {
       TRISB=0;//makes portB output port
       PORTB=0x81;
       while(1){
             Delay_ms(100);
             temp1=0x0f&(PORTB<<1);
             temp2=0xf0&(PORTB>>1);
             if(temp1==0) PORTB=0x81;
             else PORTB= temp1 | temp2;
       }
}
*/


//reciprocating pyramid
/*char temp1;
char temp2;
bit dir;
void main() {
       TRISB=0;//makes portB output port
       PORTB=0x81;dir=1;
       while(1){
             Delay_ms(100);
             if(PORTB==0x81||PORTB==0x18) dir=~dir;

             if(!dir) temp1=(0x0f&PORTB)<<1,temp2=(0xf0&PORTB)>>1;
             else temp1=(0x0f&PORTB)>>1,temp2=(0xf0&PORTB)<<1;
             PORTB= temp1 | temp2;
       }
}*/