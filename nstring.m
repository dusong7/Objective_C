#import<Foundation/Foundation.h>

int main(int argc,const char *argv[])
{
    NSString *str1 = @"This is string A";
//    NSString *str2 = @"This is string B";
    NSMutableString *mstr;
    NSRange  substr;

    mstr = [NSMutableString stringWithString: str1];
    NSLog(@"%@", mstr);

    [mstr insertString: @" mutable" atIndex: 7];
    NSLog(@"%@", mstr);

    [mstr insertString: @" string B" atIndex: [mstr length]];
    NSLog(@"%@", mstr);

    [mstr appendString: @" and string C "];
    NSLog(@"%@", mstr);

    [mstr deleteCharactersInRange: NSMakeRange (16, 13)];
    NSLog(@"%@", mstr);

    substr = [mstr rangeOfString: @"string C"];
    if(substr.location != NSNotFound)
    {
      [mstr deleteCharactersInRange: substr];
    }
    NSLog(@"%@", mstr);

    [mstr replaceCharactersInRange: NSMakeRange(8, 8)
                                    withString: @"Replace "];
    NSLog(@"%@", mstr);

    NSString *search = @"a";
    NSString *replace = @"An example of ";
     if(substr.location != NSNotFound)
    {
         [mstr replaceCharactersInRange: NSMakeRange(8, 8)
                                    withString: replace];
    }
        NSLog(@"%@", mstr);

    replace = @"XX";

    substr = [mstr rangeOfString: search];

    while(substr.location != NSNotFound)
    {
        [mstr replaceCharactersInRange: substr
                                withString: replace];
        substr = [mstr rangeOfString: search];
    }

    NSLog(@"%@", mstr);


  return(0);
}
