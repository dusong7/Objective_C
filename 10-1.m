#import<Foundation/Foundation.h>

@interface Fraction: NSObject
{
    int xVal;
    int yVal;
}
-(void) print;
-(void) setX: (int)x setY: (int)y;
-(Fraction *) add: (Fraction *)y;
-(Fraction *) initWith: (int) n over: (int) d;
@end

@implementation Fraction
-(void) print
{
    NSLog(@"%i / %i",xVal, yVal);
}

-(void) setX: (int)x setY: (int)y
{
    xVal= x;
    yVal = y;
}

-(Fraction *) add: (Fraction *)y
{
    Fraction *result = [[Fraction alloc] init];
    result->xVal = xVal + y->xVal;
    result->yVal = yVal + y->yVal;

    return result;
}

-(Fraction *) initWith: (int) n over: (int) d
{
    self = [super init];

    if(self)
    {
        [self setX: n setY: d];
    }

    return self;
}

@end


int main(int argc,const char *argv[])
{

//    Fraction *f1 = [[Fraction alloc] init];
//    [f1 setX:1 setY: 10];
//    [f1 print];
    Fraction *a;
    Fraction *b;

    a = [[Fraction alloc] initWith: 1 over: 3];
    b = [[Fraction alloc] initWith: 1 over: 5];

    [a print];
    [b print];

  return(0);
}
