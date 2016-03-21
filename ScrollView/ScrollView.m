//
//  ScrollView.m
//  ScrollView
//
//  Created by Yasmin Ahmad on 2016-03-21.
//  Copyright © 2016 Yasmin Ahmad. All rights reserved.
//

#import "ScrollView.h"

@implementation ScrollView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //Set up scrollview
        _panRecognizer = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(panAcrossScreen:)];
        [self addGestureRecognizer: _panRecognizer];
    }
    return self;
}


-(void)panAcrossScreen:(UIPanGestureRecognizer*)panRecognizer //recoginzer

{

    NSLog(@"Start moving: %@", NSStringFromCGPoint([panRecognizer locationInView:nil]));
    
    switch (panRecognizer.state) {
        
        case UIGestureRecognizerStateBegan:
        {
            NSLog(@"Start");
            break;
        }
        case UIGestureRecognizerStateChanged:
        {
            NSLog(@"Moving");
            break;
        }
        case UIGestureRecognizerStateEnded:
            NSLog(@"Finished");
            break;
            
        default:
            break;
    }
    
    CGPoint translation = [panRecognizer translationInView:self];
    
//    if (//panRecognizer > ) {
//        <#statements#>
//    }
//   
    
    
    //translation is new variable panRecognizer is object translationView is method
    
    
    //translationinView method on panView
    //manipulate self.bounds
    //if greater than content size stop panning
    


}



//-(void)contentSizePan:(CGSize)contentSize;


@end
