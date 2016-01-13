#import<Foundation/Foundation.h>

@interface AddressCard: NSObject
{
    NSString *name;
    NSString *email;
}

-(void) setName: (NSString *) theName;
-(void) setEmail: (NSString *) theEmail;
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

    NSLog(@"%@", [myCard name]);
    NSLog(@"%@", [myCard email]);

  return(0);
}
