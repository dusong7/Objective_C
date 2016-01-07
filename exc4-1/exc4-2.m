#import<Foundation/Foundation.h>
#include <math.h>
@interface Complex : NSObject   //interface part
{
    double real;
    double imaginary;
}

-(void) setReal: (double)a;
-(void) setImaginary: (double) b;
-(void) print;
-(double) real;
-(double) imaginary;
@end

@implementation Complex
-(void) setReal: (double)a
{
    real = a;
}

-(void) setImaginary: (double) b
{
    imaginary = b;
}

-(void) print
{
    NSLog(@"This Complex is %.2f + %.2fi",real,imaginary);
}

-(double) real
{
    return real;
}

-(double) imaginary
{
    return imaginary;
}

@end

int main(int argc,const char *argv[])
{
    Complex *myComplex;
    myComplex = [[Complex alloc] init];

    [myComplex setReal: 1.2];
    [myComplex setImaginary: 3.4];

    [myComplex print];
  return(0);
}
