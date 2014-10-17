//
//  ViewController.m
//  TouchTest2
//
//  Created by 池田昂平 on 2014/10/09.
//  Copyright (c) 2014年 池田昂平. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.multipleTouchEnabled = YES;
    
    TouchView *touchView = [[TouchView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:touchView];
    //[touchView setNeedsDisplay];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    // マルチタッチの場合
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInView:self.view];
        NSLog(@"x:%f y:%f", location.x, location.y);
    }
    
    NSLog(@"allTouches count : %d (touchesBegan:withEvent:)", [[event allTouches] count]);
}
*/

@end
