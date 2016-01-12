#import<Foundation/Foundation.h>

int main(int argc,const char *argv[])
{
    NSString *str1 = @"This is string A";
    NSString *str2 = @"This is string B";
    NSString *res;

    NSRange subRange;
    NSComparisonResult compareResult;

    res = [str1 substringToIndex: 3];
    NSLog(@"First 3 char of str1 : %@", res);

    res = [str1 substringFromIndex: 5];
    NSLog(@"chars from index 5 of str1: %@", res);

    res = [[str1 substringFromIndex: 8] substringToIndex: 6];
    NSLog(@"chars From index 8 thouch 13 : %@", res);


    res = [str1 substringWithRange: NSMakeRange (8, 6)];
    NSLog(@"chars from index 9 throuch 13: %@", res);



    subRange = [str1 rangeOfString: @"String A"];
    NSLog(@"string is at index %lu, length is %lu",
          subRange.location, subRange.length);

    subRange = [str2 rangeOfString: @"string B"];

    if(subRange.location == NSNotFound)
    {
        NSLog(@"String Not Found");
    }
    else
    {
         NSLog(@"string is at index %lu, length is %lu",
          subRange.location, subRange.length);
    }


    NSLog(@"Length of str1: %lu", [str1 length]);

    res = [NSString stringWithString: str1];
    NSLog(@"copy: %@", res);

    str2 = [str1 stringByAppendingString: str2];
    NSLog(@"Concatentation: %@", str2);

    if([str1 isEqualToString: res] == YES)
    {
        NSLog(@"str1 == res");
    }
    else
    {
        NSLog(@"str1 != res");
    }

    compareResult = [str1 compare: str2];
    if(compareResult == NSOrderedAscending)
    {
        NSLog(@"str1 < str2");
    }
    else if(compareResult == NSOrderedSame)
    {
        NSLog(@"str1 == str2");
    }
    else
    {
        NSLog(@"str1 > str2");
    }

    res = [str1 uppercaseString];
    NSLog(@"Upper : %s", [res UTF8String]);

    res = [str1 lowercaseString];
    NSLog(@"Lower :%@", res);

    NSLog(@"Orign string %@", str1);

  return(0);
}
