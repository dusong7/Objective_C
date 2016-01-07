#import<Foundation/Foundation.h>
#include <math.h>
@interface Complex : NSObject   //interface part
-(void) setReal: (double)a;
-(void) setImaginary: (double) b;
-(void) print;
-(double) real;
-(double) imaginary;
@end


int main(int argc,const char *argv[])
{
  double _dCTem;
  double _dFTem = 80;

  _dCTem = (_dFTem - 32) / 1.8;

  NSLog(@"%f", _dCTem);

  char c, d;

  c ='d';
  d =c;

  NSLog(@"%c",d);

  double _dValueX = 2.55;
  double _dResult;
  _dResult = 3*_dValueX*_dValueX*_dValueX - 5*_dValueX*_dValueX + 6;
  NSLog(@"%f", _dResult);

  double _dCal;
  _dCal = (3.31*pow(10,-8) + 2.01*pow(10,-7)) / (7.16*pow(10,-6) + 2.01*pow(10,-8));
  NSLog(@"VA is %f", _dCal);

  return(0);
}
