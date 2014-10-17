//
//  TouchView.m
//  TouchTest2
//
//  Created by 池田昂平 on 2014/10/15.
//  Copyright (c) 2014年 池田昂平. All rights reserved.
//

#import "TouchView.h"

@implementation TouchView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.multipleTouchEnabled = YES;
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    UIColor *color = [UIColor yellowColor];
    
    for (UITouch *touch in touchObjects){
        CGPoint location = [touch locationInView:self];
        NSLog(@"x:%f y:%f", location.x, location.y);
        
        //円の描画
        CGContextSetFillColor(context, CGColorGetComponents(color.CGColor));
        CGContextFillEllipseInRect(context, CGRectMake(location.x, location.y, 10, 10));
    }
}

/*
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    // マルチタッチの場合
    for (UITouch *touch in touches) {
        location = [touch locationInView:self];
        NSLog(@"x:%f y:%f", location.x, location.y);
        [self setNeedsDisplay];
    }
    
    
    //全てのタッチを取得
    NSSet *touchSet = [event allTouches];
    NSLog(@"allTouches count : %lu (touchesBegan:withEvent:)", (unsigned long)[touchSet count]);

 
    for(UITouch *touch in touchSet){
        location = [touch locationInView:self];
        NSLog(@"x:%f y:%f", location.x, location.y);
    }
 
}
*/

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    // マルチタッチの場合
    /*
    for (UITouch *touch in touches) {
        location = [touch locationInView:self];
        NSLog(@"x:%f y:%f", location.x, location.y);
    }
    [self setNeedsDisplay];
    
    NSLog(@"allTouches count : %d (touchesBegan:withEvent:)", [[event allTouches] count]);
    */
    [self showTouchPoint:[event allTouches]];
}

- (void)showTouchPoints{
    /*
    for (UITouch *touch in allTouches){
        location = [touch locationInView:self];
        NSLog(@"x:%f y:%f", location.x, location.y);
    }
     */
    
    //配列に保存
    touchObjects = [allTouches allObjects];
    
    NSLog(@"allTouches count : %d (touchesBegan:withEvent:)", [allTouches count]);
    
    //一度だけ描画
    [self setNeedsDisplay];
}

@end
