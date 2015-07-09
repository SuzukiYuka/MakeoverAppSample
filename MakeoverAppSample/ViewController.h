//
//  ViewController.h
//  MakeoverAppSample
//
//  Created by nagata on 6/17/15.
//  Copyright (c) 2015 nagata. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    NSString * imageNames[12];
    NSMutableArray *imageArray;
    
    int selectedNum;
    int pageNum;
    int maxPageNum;
    
    UIImageView*imageView;
        
    IBOutlet UIButton *bt1;
    IBOutlet UIButton *bt2;
    IBOutlet UIButton *bt3;
    IBOutlet UIButton *bt4;
    IBOutlet UIButton *bt5;
    IBOutlet UIButton *bt6;
}


@end

