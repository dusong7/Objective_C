#import<Foundation/Foundation.h>




@interface XYPoint: NSObject   //interface part
{
    int x;
    int y;
}
//@property int width, height;

-(void) setX: (int)xVal andY: (int) yVal;
@end

@implementation XYPoint
//synthesize width, height;

-(void) setX: (int)xVal andY: (int) yVal
{
    x = xVal;
    y = yVal;
}

@end


@class XYPoint;  //import"XYPoint.h"

@interface Rect: NSObject
{
    int wid;
    int hei;
    XYPoint * orign;
}
 -(XYPoint *) orign;
 -(void) setOrign: (XYPoint *) pt;
 -(void) setW: (int)w andH: (int) h;
 -(int)  area;
@end

@implementation Rect

 -(XYPoint *) orign
 {

    return orign;
 }

 -(void) setOrign: (XYPoint *) pt
 {
    // orign = pt;
 //    if(! orign)
  //   {
  //       orign = [[XYPoint *alloc] init];
   //  }

  //   orign.x = pt->x;
   //  orign.y = pt->y;
 }

 -(void) setW: (int)w andH: (int) h
 {
    wid = w;
    hei = h;
 }

 -(int)  area
 {
    return wid*hei;
 }

@end


int main(int argc,const char *argv[])
{
   Rect *myRec;
   XYPoint *myPt;
   myPt  = [[XYPoint alloc] init];
   myRec = [[Rect alloc] init];

   [myPt setX: 100 andY: 100 ];
   [myRec setW:5 andH: 8];

   myRec->orign = myPt;

   NSLog(@"Rec w = %i, h = %i", myRec->wid, myRec->hei);
   NSLog(@"Orign at(%i,%i)", myRec->orign->x, myRec->orign->y);

   [myPt setX: 16 andY: 60 ];
   NSLog(@"Orign at(%i,%i)", myRec->orign->x, myRec->orign->y);

   NSLog(@"Area is %i", [myRec area]);

  return(0);
}
