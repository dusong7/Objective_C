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
-(Fraction *) add: (Fraction *)f;
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
-(Fraction *) add: (Fraction *)f
{
    Fraction *result = [[Fraction alloc] init];

    result->numerator = numerator *(f->denominator) + denominator * (f->numerator) ;
    result->denominator = denominator * (f->denominator);

    [result reduce]; //aFraction
    return result;
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

  Fraction  *result;

  aFraction = [[Fraction alloc] init];
  bFraction = [[Fraction alloc] init];
  [aFraction setNumerator: 2 over: 9];  //多个参数
  [bFraction setNumerator: 3 over: 9];

    [aFraction add: bFraction];
  //  myFraction.numerator = 1;
  //[myFraction setDenominator: 9];
  //[aFraction reduce];
  result  = [aFraction add: bFraction];
  [result print];

  return(0);
}
