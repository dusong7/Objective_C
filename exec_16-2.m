//
//  main.m
//  NSFile
//
//  Created by Dusong7 on 16/2/13.
//  Copyright © 2016年 Dusong7. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSString    *fName = @"testfile1";
        NSFileManager  *fm;
        NSDictionary    *attr;
        
        fm = [NSFileManager defaultManager];
        
        if ([fm fileExistsAtPath: @"testfile1"] == NO) {
            NSLog(@"File is not exist!");
            return 1;
        }
        
        if ([fm copyItemAtPath:fName toPath:@"newFile" error:NULL] == NO) {
            NSLog(@"File copy failed!");
            return  2;
        }
        
        if ([fm contentsEqualAtPath:fName andPath:@"newFile"] == NO) {
            NSLog(@"File are no equal!");
            return 3;
        }
        
        if ([fm moveItemAtPath: @"newFile" toPath: @"newFile2" error:NULL] == NO) {
            NSLog(@"File rename Failed");
            return 4;
        }
        
        if ((attr = [fm attributesOfItemAtPath: @"newFile2" error:NULL]) == nil) {
            NSLog(@"couldn't get file attribute");
            return 5;
        }
        
   //     NSLog(@"file size is @llu bytes",
   //           [[attr objectForKey:NSFileSize] unsignedLongLongValue]);
        
        if ([fm removeItemAtPath: fName error:NULL] == NO) {
            NSLog(@"file Remove failed!");
            return 6;
        }
        
        NSLog(@"%@", [NSString stringWithContentsOfFile:@"newFile2" encoding:NSUTF8StringEncoding error:NULL]);
    }
    return 0;
}
