//
//  TouchView.h
//  TouchTest2
//
//  Created by 池田昂平 on 2014/10/15.
//  Copyright (c) 2014年 池田昂平. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TouchView : UIView{
    //CGPoint location;
    //NSInteger touchCount;
    NSArray *touchObjects;
}

- (void)drawRect:(CGRect)rect;
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;
- (void)showTouchPoint:(NSSet *)allTouches;
@end
