#import<Foundation/Foundation.h>

@interface Calculator : NSObject   //interface part
{
    double accmulator;
}
//累加
-(void) setAccmulator: (double) value;
-(void) clear;
-(double) accmulator;
//计算
-(double) add:(double) value;
-(double) substract: (double) value;
-(double) mulitply: (double) value;
-(double) divide:(double) value;
@end



@implementation Calculator
-(void) setAccmulator: (double) value
{
    accmulator = value;
}

-(void) clear
{
    accmulator = 0;
}
-(double) accmulator
{
    return accmulator;
}

-(double) add:(double) value
{
    accmulator += value;
    return accmulator;
}

-(double) substract: (double) value
{
    accmulator -= value;
    return accmulator;
}

-(double) mulitply: (double) value
{
    accmulator *= value;
    return accmulator;
}

-(double) divide:(double) value
{
    accmulator /= value;
    return accmulator;
}
@end


int main(int argc,const char *argv[])
{
    Calculator *deskCal = [[Calculator alloc] init];

    [deskCal setAccmulator: 100.0];
    NSLog(@"The value is %g",  [deskCal add: 200.0]);
    NSLog(@"The value is %g",  [deskCal divide: 15.0]);

    NSLog(@"The value is %g", [deskCal substract: 10.0]);
    NSLog(@"The value is %g", [deskCal mulitply: 5]);

    NSLog(@"The result is %g", [deskCal accmulator]);

  return(0);
}
