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
    
    //画像の名前の入る配列
    for (int i = 1; i <= 12; i++) {
        imageNames[i-1] = [NSString stringWithFormat:@"%d.png",i];
    }
    imageArray = [[NSMutableArray alloc] init];
}

- (IBAction)right{
    if (pageNum < maxPageNum) {
        pageNum = pageNum + 1;
        [bt1 setBackgroundImage:[UIImage imageNamed:imageNames[6]] forState:UIControlStateNormal];
        [bt2 setBackgroundImage:[UIImage imageNamed:imageNames[7]] forState:UIControlStateNormal];
        [bt3 setBackgroundImage:[UIImage imageNamed:imageNames[8]] forState:UIControlStateNormal];
        [bt4 setBackgroundImage:[UIImage imageNamed:imageNames[9]] forState:UIControlStateNormal];
        [bt5 setBackgroundImage:[UIImage imageNamed:imageNames[10]] forState:UIControlStateNormal];
        [bt6 setBackgroundImage:[UIImage imageNamed:imageNames[11]] forState:UIControlStateNormal];
    }
}
- (IBAction)left{
    if (pageNum > 0) {
        pageNum = pageNum - 1;
        [bt1 setBackgroundImage:[UIImage imageNamed:imageNames[0]] forState:UIControlStateNormal];
        [bt2 setBackgroundImage:[UIImage imageNamed:imageNames[1]] forState:UIControlStateNormal];
        [bt3 setBackgroundImage:[UIImage imageNamed:imageNames[2]] forState:UIControlStateNormal];
        [bt4 setBackgroundImage:[UIImage imageNamed:imageNames[3]] forState:UIControlStateNormal];
        [bt5 setBackgroundImage:[UIImage imageNamed:imageNames[4]] forState:UIControlStateNormal];
        [bt6 setBackgroundImage:[UIImage imageNamed:imageNames[5]] forState:UIControlStateNormal];
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

-(IBAction)reset {
    selectedNum = 0;
    for (int i = 0; i < imageArray.count; i++) {
        [imageArray[i] removeFromSuperview];
    }
    [imageArray removeAllObjects];
}
-(IBAction)back {
    [imageArray.lastObject removeFromSuperview];
    [imageArray removeLastObject];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    //タップした座標の取得
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:self.view];
    if (selectedNum > 0) {
        UIImage *image = [UIImage imageNamed:imageNames[selectedNum-1]];
        imageView = [[UIImageView alloc] initWithImage:image];
        imageView.userInteractionEnabled = YES;
        imageView.center = CGPointMake(location.x, location.y);
        [imageArray addObject:imageView];
        UITapGestureRecognizer *tap
        = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)];
        [imageView addGestureRecognizer:tap];
        [self.view addSubview:imageView];
    }
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:self.view];
    imageView.center = CGPointMake(location.x, location.y);

}

-(void)tapAction:(id)sender {
    NSLog(@"aaa");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
