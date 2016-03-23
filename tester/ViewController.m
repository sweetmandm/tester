//
//  ViewController.m
//  tester
//
//  Created by David Sweetman on 10/28/15.
//  Copyright © 2015 test. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) NSOperationQueue *queue;
@property (strong, nonatomic) UILabel *label;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.queue = [[NSOperationQueue alloc] init];
    
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(0, 100.0, 320.0, 40.0)];
    self.label.text = @"This is the label";
    [self.view addSubview:self.label];
}

- (void)viewDidAppear:(BOOL)animated
{
    
    [self.queue addOperationWithBlock:^{
        
        self.label.text = @"The block executed!";
        
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
