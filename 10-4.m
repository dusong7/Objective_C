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


int main(int argc,const char *argv[])
{

//    Fraction *f1 = [[Fraction alloc] init];
//    [f1 setX:1 setY: 10];
//    [f1 print];
    Fraction *a;
    Fraction *b;
    Fraction *c;

//    a = [[Fraction alloc] initWith: 1 over: 3];
//    b = [[Fraction alloc] initWith: 1 over: 5];
    NSLog(@"Fraction allocated : %i", [Fraction count]);

    a = [[Fraction allocF] init];
    b = [[Fraction allocF] init];
    c = [[Fraction allocF] init];

    NSLog(@"Fraction allocated %i", [Fraction count]);
 //   [a print];
  //  [b print];

  return(0);
}
