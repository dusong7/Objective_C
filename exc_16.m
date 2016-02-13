//
//  main.m
//  TestNS
//
//  Created by Dusong7 on 16/1/21.
//  Copyright ? 2016年 Dusong7. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSSet (Printing)
-(void) print;
@end

@implementation NSSet (Printing)

-(void) print{
    printf("{ ");
    for(NSNumber *elemrnt in self)
        printf(" %li", (long) [elemrnt integerValue]);
    
    printf("} \n");
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSMutableSet *set1 = [NSMutableSet setWithObjects:@1, @3, @5, @10, nil];
        NSMutableSet *set2 = [NSMutableSet setWithObjects:@-5, @100, @3, @5, nil];
        NSMutableSet *set3 = [NSMutableSet setWithObjects:@12, @200, @3, nil];
        
        NSLog(@"set1: ");
        [set1 print];
        
        NSLog(@"set2: ");
        [set2 print];
        
        if ([set1 isEqualToSet:set2] == YES) {
            NSLog(@"set1 equals set2");
        }
        
        if ([set1 containsObject:@10] == YES) {
            NSLog(@"set1 contains 10");
        }
        else
        {
            NSLog(@"set1 not contains 10");
        }
        
        [set1 addObject: @4];
        [set1 removeObject: @10];
        NSLog(@"set1 add 4 remove 10");
        [set1 print];
        
        [set1 intersectSet: set2];
        NSLog(@"set1 intersect set2: ");
        [set1 print];
        
        [set1 unionSet: set3];
        NSLog(@"set1 union set3: ");
        [set1 print];
       
    }
    
    return 0;
}
