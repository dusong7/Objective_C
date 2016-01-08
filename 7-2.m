#import<Foundation/Foundation.h>

@interface Fraction : NSObject   //interface part
{
   int numerator;
    int denominator;
}
//@property int numerator, denominator;
-(void) print;
-(void) setNumerator: (int) n over: (int) d;
-(void) setDenominator: (int) d;
-(void) add: (Fraction *)f;
-(void) reduce;
@end

@implementation Fraction

//@synthesize int numerator, denominator;

-(void) reduce
{
    int v = numerator;
    int u = denominator;
    int temp = 0;

    while(v != 0)
    {
        temp = u % v;
        u = v;
        v = temp;
    }
    numerator /= u;
    denominator /= u;

}
-(void) add: (Fraction *)f
{
    numerator = numerator *(f->denominator) + denominator * (f->numerator) ;
    denominator = denominator * (f->denominator);
}

-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);

}
-(void) setNumerator: (int) n over: (int) d;
{
    numerator = n;
    denominator = d;
}
-(void) setDenominator: (int) d
{
    denominator = d;
}
@end


int main(int argc,const char *argv[])
{
  Fraction *aFraction;
  Fraction *bFraction;

  aFraction = [[Fraction alloc] init];
  bFraction = [[Fraction alloc] init];
  [aFraction setNumerator: 2 over: 9];  //多个参数
  [bFraction setNumerator: 3 over: 9];

    [aFraction add: bFraction];
  //  myFraction.numerator = 1;
  //[myFraction setDenominator: 9];
  [aFraction reduce];
  [aFraction print];

  return(0);
}
