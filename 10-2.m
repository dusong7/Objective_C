#import<Foundation/Foundation.h>

@interface Fraction: NSObject
{
@private
    int xVal;   //实例变量
    int yVal;   //实例变量 将其声明为public，违背数据封装思想
@public
 //   (void) print;

}
-(void) print;
-(void) setX: (int)x setY: (int)y;
-(Fraction *) add: (Fraction *)y;
-(Fraction *) initWith: (int) n over: (int) d;
-(id) init;
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

-(id) init
{
    return [self initWith:0 over: 0];
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
