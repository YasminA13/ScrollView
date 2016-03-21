//
//  ScrollView.h
//  ScrollView
//
//  Created by Yasmin Ahmad on 2016-03-21.
//  Copyright © 2016 Yasmin Ahmad. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScrollView : UIView

@property CGSize contentSize;
@property UIPanGestureRecognizer* panRecognizer;

-(void)panAcrossScreen:(UIPanGestureRecognizer*)panRecognizer;



@end
