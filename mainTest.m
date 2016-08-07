//
//  main.m
//  cmdLearn
//
//  Created by apple on 16/4/28.
//  Copyright © 2016年 apple. All rights reserved.
//

#include "Header.h"


@implementation TestCalss

@synthesize numberN, numberM;

-(void) show
{
    NSLog(@"The value is M %i, N %i", numberN, numberM);
}

-(void) add: (int)n over: (int)m
{
    numberN = n;
    numberM = m;
    numberN += numberM;
}

-(void) multi: (int)m
{
    numberM = m;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        int nValue = 100;
//
//        NSLog(@"Hello, World %d!",nValue);

        TestCalss *testcls;

        testcls = [TestCalss alloc];
        testcls = [testcls init];

        [testcls add:3 over:9];
        [testcls multi:8];

        [testcls show];

//        int nValue = 0;
//        scanf("%i",&nValue); //keyborad input, alike C language
//
//        for (int i; i<10; i++) {
//            nValue += i;
//            NSLog(@"CurValue is %i", nValue);
//        }
    }
    return 0;
}
