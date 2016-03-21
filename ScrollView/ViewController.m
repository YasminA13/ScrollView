//
//  ViewController.m
//  ScrollView
//
//  Created by Yasmin Ahmad on 2016-03-21.
//  Copyright © 2016 Yasmin Ahmad. All rights reserved.
//

#import "ViewController.h"
#import "ScrollView.h" 

@interface ViewController ()

@property (strong, nonatomic)ScrollView *mainView;
@property (strong, nonatomic)UIView *redView;
@property (strong, nonatomic)UIView *greenView;
@property (strong, nonatomic)UIView *blueView;
@property (strong, nonatomic)UIView *yellowView;
@property CGSize contentSize;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];

    //Create
    self.mainView = [[ScrollView alloc] initWithFrame:CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y, self.view.bounds.size.width, self.view.bounds.size.height)];
    self.mainView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:self.mainView];
    //[self.mainView setContentSize:CGSizeMake(1000, 1000)];
    self.mainView.contentSize = CGSizeMake(1000, 1000);
    
    UIView *redView = [[UIView alloc]initWithFrame:CGRectMake(20, 20, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    [self.mainView addSubview:redView];
    //why is it self.view and not self.mainView?
    
    UIView *greenView = [[UIView alloc]initWithFrame:CGRectMake(150, 150, 150, 200)];
    greenView.backgroundColor = [UIColor greenColor];
    [self.mainView addSubview:greenView];
    
    UIView *blueView = [[UIView alloc]initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueView.backgroundColor = [UIColor blueColor];
    [self.mainView addSubview:blueView];
    
    UIView *yellowView = [[UIView alloc]initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellowView.backgroundColor = [UIColor yellowColor];
    [self.mainView addSubview:yellowView];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
