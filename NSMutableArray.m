#import<Foundation/Foundation.h>

int main(int argc,const char *argv[])
{
    NSMutableArray *number = [NSMutableArray array];
    NSNumber *myNumber;
    int i;

    for(i=0; i<10; ++i)
    {
        myNumber = [NSNumber numberWithInteger: i];
        [number addObject: myNumber];
    }

    for(i=0; i<10; i++)
    {
        myNumber = [number objectAtIndex: i];
        NSLog(@"%@", myNumber);
    }

  return(0);
}
