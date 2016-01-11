#import<Foundation/Foundation.h>

@interface Comple: NSObject   //interface part
 {
    double real;
    double imag;
 }
 -(void) print;
 -(void) setReal: (double)a andImag: (double) b;
 -(Comple *) add: (Comple *)f;
@end

@implementation Comple
 -(void) print
 {
    NSLog(@"%g + %gi", real, imag);

 }
 -(void) setReal: (double)a andImag: (double) b
 {
    real = a;
    imag = b;
 }

 -(Comple *) add: (Comple *)f
 {
    Comple * result = [[Comple alloc] init];
    result->real = real + f->real;
    result->imag = imag + f->imag;

    return result;
 }

@end


@interface Fraction: NSObject
{
    int xVal;
    int yVal;
}
-(void) print;
-(void) setX: (int)x setY: (int)y;
-(Fraction *) add: (Fraction *)y;
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

@end


int main(int argc,const char *argv[])
{
//      Fraction *f1 = [[Fraction alloc] init];
//   Fraction *f2 = [[Fraction alloc] init];
//  Fraction *fResult  ;

//   id dataValue;

//     Comple *c1 = [[Comple alloc] init];
//  Comple *c2 = [[Comple alloc] init];
//  Comple *result;

//     [f1 setX: 2 setY: 5];
//   [f2 setX: 1 setY: 5];
//   fResult = [f1 add: f2];
//   [fResult print];

//   [c1 setReal: 18.0 andImag: 2.5];
//   [c2 setReal:-5.0 andImag: 3.2];
//   result = [c1 add: c2];
//   [result print];
//  dataValue = f1;
//  [dataValue print];

//  dataValue = c1;
//  [dataValue print];
// if((mySquare respondsToSeletor: @selector (setWidth:andHeight:)] == YES))

   Fraction *f1 = [[Fraction alloc] init];
   [f1 setX:1 setY: 10];
   [f1 print];

  return(0);
}
