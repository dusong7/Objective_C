#import<Foundation/Foundation.h>

@interface ClassA: NSObject   //interface part
{
    int x;
}
- (void) iniVar;
- (void) printVar;
@end

@implementation ClassA
- (void) iniVar
{
    x = 100;
}

- (void) printVar
{
    NSLog(@"ax = %i", x);
}

@end


@interface ClassB: ClassA
- (void) iniVar;
- (void) printVar;
@end

@implementation ClassB
- (void) iniVar
{
    x = 200;
}
- (void) printVar
{
     NSLog(@"x = %i", x);
}
@end


int main(int argc,const char *argv[])
{

  ClassB *b;
  b = [[ClassB alloc] init];

  ClassA *a;
  a = [[ClassA alloc] init];

  [a iniVar];
  [a printVar];

  [b iniVar];
  [b printVar];

  return(0);
}
