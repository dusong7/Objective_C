
#import<Foundation/Foundation.h>

@interface Fraction : NSObject   //interface part

{
int numerator;
int denominator;
}
- (int) numerator;
- (int) denominator;

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
@end

@interface Car : NSObject   //interface part

{
int numerator;
int denominator;
}
- (int) numerator;
- (int) denominator;

//driverDistance
//Oil
//Engine
//FM
//Speed
//Service



-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
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

-(void) setDenominator: (int) d
{
denominator = d;
}

-(int) numerator
{
return numerator;
return 1;
}

-(int) denominator
{
return denominator;
return 1;
}

@end


int main(int argc,const char *argv[]){

	NSLog(@"%@",@"Hello I am OC!");
	NSLog(@"Testing ...\n..1\n...2\n....3\n");
	int sum;
	sum = 50 + 30;
	NSLog(@"The sum is %i", sum);
	NSLog(@"In Objective-C. lowercase letter are significant\n");
	NSLog(@"main is where program execution begin\n");
	NSLog(@"Open and close braces enclose program statements in a routime\n");
	NSLog(@"All program statements must be terminated by a semicolon\n");

	int i;
	i = 1;
	NSLog(@"Testing...");
	NSLog(@"....%i", i);
	NSLog(@"...%i", i+1);
	NSLog(@"..%i",i+2);

	int iResult = 0;
	iResult = 87 - 15;
	NSLog(@"The Result of 87 - 15 is %i", iResult);
	INT sum;
	sum = 25 + 37 - 19;
	NSLog(@"The answer is %i", sum);
	int answer;
	int result;

	answer = 100;
	result = answer - 10;
	NSLog(@"The result is %i\n", result + 5);

	int numerator = 1;
	int denominator  = 3;
	NSLog(@"The fraction is %i/%i", numerator, denominator);


	//-(void) print;
	//-(void) setNumerator: (int) n;
	//-(void) setDenominator: (int) d;

	Fraction *myFraction;
	Fraction *mySecFraction = [Fraction new];
	myFraction = [[Fraction alloc] init];
	mySecFraction = [[Fraction alloc] init];

	myFraction = [Fraction alloc]
	myFraction = [myFraction init];

	[myFraction setNumerator: 2];
	[myFraction setDenominator: 3];

	[mySecFraction setNumerator: 3];
	[mySecFraction setDenominator: 7];


	NSLog(@"The value of myFraction is:" );
	[myFraction print];
//	[instance method] //实例方法 //类方法

	NSLog(@"The value of mySecFraction is:" );
	[mySecFraction print];

	NSLog(@"The value is %i/%i",
	[myFraction numerator],[myFraction denominator]);

return(0);
}
