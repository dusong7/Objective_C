//
//  ViewController.m
//  ImageTouch
//
//  Created by apple on 16/5/29.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImageView *imgView =[[UIImageView alloc] initWithFrame:CGRectMake(0, 0,640,1136)];

    imgView.userInteractionEnabled=YES;
    UITapGestureRecognizer *singleTap =[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(onClickImage)];
    [imgView addGestureRecognizer:singleTap];
    //[imgView setImage:[UIImage imageNamed:@"IMG_6187.PNG"]];
    [self.view addSubview:imgView];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)onClickImage{
    NSLog(@"Image is Clicked");

    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"出错"
                                                    message:@"这个人照片美得无法显示"
                                                   delegate:self
                                          cancelButtonTitle:nil
                                          otherButtonTitles:@"确定", nil];

    [alert show];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0,320,568)];
    imageView.image = [UIImage imageNamed:@"IMG_6187.PNG"];

    [self.view addSubview:imageView];

}

@end
