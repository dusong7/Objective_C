#import<Foundation/Foundation.h>

@interface XYpoint : NSObject   //interface part
{
    int pointX;
    int pointY;
}

-(void) setPointX: (int) x;
-(void) setPointY: (int) y;
-(int) getPointX;
-(int) getPointY;
-(void) print;
@end



@implementation XYpoint
-(void) setPointX: (int) x
{
    pointX = x;
}

-(void) setPointY: (int) y
{
    pointY = y;
}

-(int) getPointX
{
    return pointX;
}

-(int) getPointY
{
    return pointY;
}

-(void) print
{
    NSLog(@"The point is %i,%i", pointX, pointY);
}

@end


int main(int argc,const char *argv[])
{
    XYpoint *firPoint = [XYpoint new];
    XYpoint *secPoint = [XYpoint new];

    [firPoint setPointX:1];
    [firPoint setPointY:1];

    [secPoint setPointX:10];
    [secPoint setPointY:10];

    [firPoint print];
    [secPoint print];

    NSLog(@"secPoint is %i, %i",[firPoint getPointX],
    [firPoint getPointY]);

  return(0);
}
