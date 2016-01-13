#import<Foundation/Foundation.h>

@interface AddressCard: NSObject
{
    NSString *name;
    NSString *email;
}

-(void) setName: (NSString *) theName;
-(void) setEmail: (NSString *) theEmail;
-(void) print;
-(NSString *) name;
-(NSString *) email;
@end

@implementation  AddressCard
-(void) setName: (NSString *) theName
{
    name = [NSString stringWithString: theName];
}

-(void) setEmail: (NSString *) theEmail
{
    email = [NSString stringWithString: theEmail];
}

-(NSString *) name
{
    return name;
}

-(NSString *) email
{
    return email;
}

-(void) print
{
    NSLog(@"====================");
    NSLog(@"|                                               |");
    NSLog(@"|  %@ |",              name );
    NSLog(@"|   %@|",              email );
    NSLog(@"               o                        o      ");
    NSLog(@"==================== ");
}
@end

int main(int argc,const char *argv[])
{
    AddressCard *myCard;
    myCard = [[AddressCard alloc] init];
    NSString *myName;
    NSString *myEmail;

    myName = @"Dusong7";
    myEmail = @"dusong7@yahoo.com";

    [myCard setName: myName];
    [myCard setEmail: myEmail];

    [myCard print];

  return(0);
}
