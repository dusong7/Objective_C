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


@interface ClassB: Comple

@end

@implementation ClassB

@end


int main(int argc,const char *argv[])
{

    Comple *c1 = [[Comple alloc] init];
    Comple *c2 = [[Comple alloc] init];
    Comple *result;
    [c1 setReal: 18.0 andImag: 2.5];
    [c2 setReal:-5.0 andImag: 3.2];
    result = [c1 add: c2];
    [result print];

  return(0);
}
