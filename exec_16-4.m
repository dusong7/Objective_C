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
        NSDate         *fileData;
        NSArray        *dirArray;
        NSDirectoryEnumerator   *dirEnum;
        NSString        *path;
        
        
        fm = [NSFileManager defaultManager];
        
        
       if([fm changeCurrentDirectoryPath: @"/Users/dusong7/Desktop/NSFile/NSFile"] == NO)
       {
           NSLog(@"Change directory is Failed!");
       }
        
        
        
        NSLog(@"%@",[fm currentDirectoryPath]);
        
        
        fileData = [fm contentsAtPath: @"testfile1"];
        
        if (fileData == nil) {
            NSLog(@"File read Failed!");
            return 2;
        }
        
        
        if ([fm fileExistsAtPath: fName] == NO) {
            NSLog(@"File is not exist!");
            return 1;
        }
        
        if ([fm createFileAtPath: @"newFile3" contents: fileData attributes:nil] == NO) {
            NSLog(@"Could creat the copy!");
            return 4;
        }
        
        path = [fm currentDirectoryPath];
        
        dirEnum = [fm enumeratorAtPath: path];
        NSLog(@"Contents of %@", path);
        
        while ((path =[dirEnum nextObject]) != nil) {
            NSLog(@"%@", path);
            
        }
        
        dirArray = [fm contentsOfDirectoryAtPath: [fm currentDirectoryPath] error:NULL];
        
        NSLog(@"Contents using ....");
        
        for (path in dirArray) {
            NSLog(@"%@", path);
        }
       
    }

    
    return 0;
}
