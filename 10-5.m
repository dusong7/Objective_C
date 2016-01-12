#import<Foundation/Foundation.h>


@interface Fraction: NSObject
{
@private
    int xVal;   //实例变量
    int yVal;   //实例变量 将其声明为public，违背数据封装思想
//   extern int gMoveNumber; //通知系统->外部变量
@public
 //   (void) print;

}
-(void) print;
-(void) setX: (int)x setY: (int)y;
-(Fraction *) add: (Fraction *)y;
-(Fraction *) initWith: (int) n over: (int) d;
-(id) init;
+(Fraction *) allocF;
+(int) count;

@end

static int gCounter;

@implementation Fraction
+(Fraction *) allocF
{
    extern int gCounter;
    ++gCounter;

    return [Fraction alloc];
}
+(int) count
{
    extern int gCounter;
    return gCounter;
}

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

@interface Fraction (MathOps)
-(Fraction *) add: (Fraction *) f;
-(Fraction *) mul: (Fraction *) f;
-(Fraction *) sub: (Fraction *) f;
-(Fraction *) div: (Fraction *) f;
@end


@implementation Fraction (MathOps)
-(Fraction *) add: (Fraction *) f
{
    // a/b + c/d = ((a*d) + (b*c)) / (b*d)
    Fraction *result = [[Fraction alloc] init];
    result->xVal = (xVal * f->yVal) + (yVal * f->xVal);
    result->yVal = (yVal * f->yVal);

    return result;
}

-(Fraction *) mul: (Fraction *) f
{
    Fraction *result = [[Fraction alloc] init];
    result->xVal = (xVal * f->xVal);
    result->yVal = (yVal * f->yVal);

    return result;
}

-(Fraction *) sub: (Fraction *) f
{
    //a/b - c/d = ((a*d) - (b*c))/(b*d)
    Fraction *result = [[Fraction alloc] init];
    result->xVal = (xVal * f->yVal) - (yVal * f->xVal);
    result->yVal = (yVal * f->yVal);

    return result;
}

-(Fraction *) div: (Fraction *) f
{
    Fraction *result = [[Fraction alloc] init];
    result->xVal = (xVal * f->yVal);
    result->yVal = (yVal * f->xVal);

    return result;
}

@end


int main(int argc,const char *argv[])
{

  Fraction *a = [[Fraction alloc] init];
  Fraction *b = [[Fraction alloc] init];
  Fraction *result;

    [a setX:5 setY: 10];
    [b setX:4 setY: 10];

///// 加法运算///
    [a print];
    NSLog(@"  + ");
    [b print];
     result = [a add: b];

     [result print];
      NSLog(@"/////////////// ");
///// 减法运算///
    [a print];
    NSLog(@"  - ");
    [b print];
     result = [a sub: b];

     [result print];
    NSLog(@"/////////////// ");
  ///// 乘法运算///
    [a print];
    NSLog(@"  x ");
    [b print];
     result = [a mul: b];

     [result print];
     NSLog(@"/////////////// ");
///// 除法运算///
    [a print];
    NSLog(@"  ÷ ");
    [b print];
     result = [a div: b];

     [result print];
      NSLog(@"/////////////// ");
  return(0);
}
