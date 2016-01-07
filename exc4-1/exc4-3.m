#import<Foundation/Foundation.h>
#include <math.h>
@interface Rectangle1 : NSObject   //interface part
{
    int width;
    int height;
}

-(void) setWidth: (int) w;
-(void) setHeight: (int) h;
-(int) width;
-(int) height;
-(int) area;
-(int) perimeter;
@end

@implementation Rectangle1
-(void) setWidth: (int) w
{
    width = w;
}

-(void) setHeight: (int) h
{
    height = h;
}

-(int) width
{
    return width;
}

-(int) height
{
    return height;
}

-(int) area
{
    return height * width;
}

-(int) perimeter
{
     return 2*(height + width);
}

@end

int main(int argc,const char *argv[])
{

    Rectangle1 *myRec;
    myRec = [[Rectangle1 alloc] init];

    [myRec setWidth: 100];
    [myRec setHeight: 20];

    NSLog(@"This Rectangle's width is %i,height is %i", [myRec width], [myRec height]);
    NSLog(@"This Rectangle's Area is %i,perimeter is %i", [myRec area], [myRec perimeter]);

  return(0);
}
