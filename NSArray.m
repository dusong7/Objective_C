#import<Foundation/Foundation.h>

int main(int argc,const char *argv[])
{
    int i;
    NSArray * monthNames = [NSArray arrayWithObjects:
            @"Jan", @"Feb", @"Mar", @"Apr", @"May",
            @"Jun", @"Jul", @"Aug", @"Sep",
            @"Oct", @"Nov", @"Dec", nil];
    for(i=0; i<12;i++)
    {
        NSLog(@"%2i %@", i+1, [monthNames objectAtIndex: i]);
    }
  return(0);
}
