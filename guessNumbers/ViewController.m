//
//  ViewController.m
//  guessNumbers
//
//  Created by 朱 皓斌 on 12-9-17.
//  Copyright (c) 2012年 朱 皓斌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize number;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setNumber:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (IBAction)submit:(id)sender {
    if ([number.text isEqualToString:@"16"]) {
        UIAlertView *newAlert=[[UIAlertView alloc]initWithTitle:@"恭喜你答对了" message:@"非常正确" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil ];
        
        [newAlert show];
        
    }
    else if ([number.text integerValue]>16){
        UIAlertView *newAlert=[[UIAlertView alloc]initWithTitle:@"答错了" message:@"答案比你输入的值小" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil ];
        [newAlert show];
    }
    else if ([number.text integerValue]<16){
        UIAlertView *newAlert=[[UIAlertView alloc]initWithTitle:@"答错了" message:@"答案比你输入的值大" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil ];
        [newAlert show];
    }
}




@end
