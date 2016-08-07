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

int xValue = 100;

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

-(void) multi: (TestCalss *)m
{
    numberM = numberM * m.numberM + numberN * m.numberN;
    numberN = numberN * m.numberN + numberM * m.numberN;
}

@end

@implementation TestClsBT

-(void) showMore
{
    NSLog(@"Show more %i", xValue);
    [self show];

}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        int nValue = 100;
//
//        NSLog(@"Hello, World %d!",nValue);

        TestCalss *testcls;

        TestClsBT *testBt = [[TestClsBT alloc] init];

        testcls = [TestCalss alloc];
        testcls = [testcls init];

        [testcls add:10 over:10];
        [testcls show];

        [testcls multi:testcls];
        [testcls show];

        [testBt add:10 over:10];
        [testBt showMore];
//
//        2016-08-07 22:45:04.697 cmdLearn[1339:39432] The value is M 20, N 10
//        2016-08-07 22:45:04.698 cmdLearn[1339:39432] The value is M 10400, N 500
//        2016-08-07 22:45:04.698 cmdLearn[1339:39432] Show more 100
//        2016-08-07 22:45:04.698 cmdLearn[1339:39432] The value is M 20, N 10
//        Program ended with exit code: 0

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
