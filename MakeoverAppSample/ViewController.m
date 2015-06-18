//
//  ViewController.m
//  MakeoverAppSample
//
//  Created by nagata on 6/17/15.
//  Copyright (c) 2015 nagata. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //現在のページ数
    pageNum = 0;
    
    //ページ数の最大
    maxPageNum = 1;
    
    //選択している画像の番号
    selectedNum = 0;
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)right{
    if (pageNum < maxPageNum) {
        pageNum = pageNum + 1;
        [bt1 setBackgroundImage:[UIImage imageNamed:@"aaa"] forState:UIControlStateNormal];
        [bt2 setBackgroundImage:[UIImage imageNamed:@"aaa"] forState:UIControlStateNormal];
        [bt3 setBackgroundImage:[UIImage imageNamed:@"aaa"] forState:UIControlStateNormal];
        [bt4 setBackgroundImage:[UIImage imageNamed:@"aaa"] forState:UIControlStateNormal];
        [bt5 setBackgroundImage:[UIImage imageNamed:@"aaa"] forState:UIControlStateNormal];
        [bt6 setBackgroundImage:[UIImage imageNamed:@"aaa"] forState:UIControlStateNormal];
    }
}
- (IBAction)left{
    if (pageNum > 0) {
        pageNum = pageNum - 1;
        [bt1 setBackgroundImage:[UIImage imageNamed:@"bbb"] forState:UIControlStateNormal];
        [bt2 setBackgroundImage:[UIImage imageNamed:@"bbb"] forState:UIControlStateNormal];
        [bt3 setBackgroundImage:[UIImage imageNamed:@"bbb"] forState:UIControlStateNormal];
        [bt4 setBackgroundImage:[UIImage imageNamed:@"bbb"] forState:UIControlStateNormal];
        [bt5 setBackgroundImage:[UIImage imageNamed:@"bbb"] forState:UIControlStateNormal];
        [bt6 setBackgroundImage:[UIImage imageNamed:@"bbb"] forState:UIControlStateNormal];
    }
}

- (IBAction)bt1pushed {
    selectedNum = 1 + (6 * pageNum);
    
}

- (IBAction)bt2pushed {
    selectedNum = 2 + (6 * pageNum);

}

- (IBAction)bt3pushed {
    selectedNum = 3 + (6 * pageNum);

}

- (IBAction)bt4pushed {
    selectedNum = 4 + (6 * pageNum);
}

- (IBAction)bt5pushed {
    selectedNum = 5 + (6 * pageNum);
}

- (IBAction)bt6pushed {
    selectedNum = 6 + (6 * pageNum);
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
