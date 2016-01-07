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
-(void) add:(double) value;
-(void) substract: (double) value;
-(void) mulitply: (double) value;
-(void) divide:(double) value;
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

-(void) add:(double) value
{
    accmulator += value;
}

-(void) substract: (double) value
{
    accmulator -= value;
}

-(void) mulitply: (double) value
{
    accmulator *= value;
}

-(void) divide:(double) value
{
    accmulator /= value;
}
@end


int main(int argc,const char *argv[])
{
    Calculator *deskCal = [[Calculator alloc] init];

    [deskCal setAccmulator: 100.0];
    [deskCal add: 200.0];
    [deskCal divide: 15.0];
    [deskCal substract: 10.0];
    [deskCal mulitply: 5];
    NSLog(@"The result is %g", [deskCal accmulator]);

  return(0);
}
