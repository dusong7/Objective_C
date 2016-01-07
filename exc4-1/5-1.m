#import<Foundation/Foundation.h>

@interface Fraction : NSObject   //interface part
{
    int numerator;
    int denominator;
}
-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominattor: (int) d;
-(int)  numerator;
-(int)  denominator;
-(double) convertToNum;
@end


@implementation Fraction
-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

-(void) setNumerator: (int) n
{
    numerator = n;
}

-(void) setDenominattor: (int) d
{
    denominator = d;
}

-(int)  numerator
{
    return numerator;
}

-(int)  denominator
{
    return denominator;
}

-(double) convertToNum
{
    if(denominator !=0)
    {
        return (double) numerator / denominator;
    }
    else
    {
        return -1.000;
    }
}
@end


int main(int argc,const char *argv[])
{
    Fraction *aFraction = [[Fraction alloc] init];
    Fraction *bFraction = [[Fraction alloc] init];

    [aFraction setNumerator: 1];
    [aFraction setDenominattor: 4];

    [aFraction print];
    NSLog(@"%g", [aFraction convertToNum]);

    [bFraction print];
    NSLog(@"%g", [b Fraction convertToNum]);
  return(0);
}
