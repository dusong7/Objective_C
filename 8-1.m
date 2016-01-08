#import<Foundation/Foundation.h>

@interface ClassA: NSObject   //interface part
{
    int x;
}
-(void) initVar;
@end

@implementation ClassA
-(void) initVar
{
    x  =100;
}

@end

@interface ClassB: ClassA
-(void) printVar;
@end

@implementation ClassB

-(void) printVar
{
    NSLog(@"%i", x);
}

@end


int main(int argc,const char *argv[])
{
 // NSLog(@"Hello");
   ClassB *myClassB;
   myClassB = [[ClassB alloc] init];
   [myClassB initVar];
   [myClassB printVar];
  return(0);
}
