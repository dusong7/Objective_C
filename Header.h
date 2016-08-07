//
//  Header.h
//  cmdLearn
//
//  Created by apple on 16/8/7.
//  Copyright © 2016年 apple. All rights reserved.
//

#ifndef Header_h
#define Header_h


#endif /* Header_h */

#import <Foundation/Foundation.h>

@interface TestCalss : NSObject

@property int numberN, numberM;

-(void) show;
-(void) add: (int)n over: (int)m;
-(void) multi:(TestCalss*) m;
@end

@interface TestClsBT : TestCalss
-(void) showMore;
@end
