#import<Foundation/Foundation.h>

int main(int argc,const char *argv[])
{

  NSNumber  *myNum;
  NSNumber  *floatNum;
  NSNumber  *intNum;
  NSInteger *myInt;

  intNum = [NSNumber numberWithInteger: 100];
  myInt = [intNum integerValue];
  NSLog(@"%li", (long)myInt);

  myNum = [NSNumber numberWithLong: 0xabcdef];
  NSLog(@"%lx", [myNum longValue]);

  myNum = [NSNumber numberWithDouble: 1235e+15];
  NSLog(@"%lg", [myNum doubleValue]);

  floatNum = [NSNumber numberWithFloat: 101.00];
  NSLog(@"%g", [floatNum floatValue]);

  if([intNum isEqualToNumber: floatNum] == YES)
  {
      NSLog(@"Number is Equal");
  }
  else
  {
      NSLog(@"Number are not Equal");
  }
//numberWithChar, numberWithFloat, numberWithDouble,
//charValue, floatValue, doubleValue,

  return(0);
}
