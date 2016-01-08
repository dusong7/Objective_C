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

@end

@implementation Fraction

//@synthesize int numerator, denominator;
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
  Fraction *myFraction;
  myFraction = [[Fraction alloc] init];
  [myFraction setNumerator: 2 over: 9];  //多个参数
  //  myFraction.numerator = 1;
  //[myFraction setDenominator: 9];
  [myFraction print];

  return(0);
}
