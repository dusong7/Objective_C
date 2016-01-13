#import<Foundation/Foundation.h>

int main(int argc,const char *argv[])
{
    NSString *str1 = @"This is string A";
    NSString *str2 = @"This is string B";
    NSMutableString *mstr;
    NSRange  substr;

    mstr = [NSMutableString stringWithString: str1];
    NSLog(@"%@", mstr);

    [mstr insertString: @" mutable" atIndex: 7];
    NSLog(@"%@", mstr);

  return(0);
}
