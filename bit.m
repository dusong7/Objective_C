   #import<Foundation/Foundation.h>
   
int main(int argc,const char *argv[])
{

    unsigned int w1 = 0xA0A0A0A0;
    unsigned int w2 = 0xFFFF0000;
    unsigned int w3 = 0x00007777;

    NSLog(@"%x %x %x", w1&w2, w1|w2, w1^w2);
    NSLog(@"%x %x %x", ~w1, ~w2, ~w3);
    NSLog(@"%x %x %x", w1^w1, w1&-w2, w1|w2|w3);
    NSLog(@"%x %x", w1|w2&w3, w1|w2&~w3);
    NSLog(@"%x %x", ~(~w1 & ~w2), -(-w1 | -w2));
    
    return 0;
  }
    
