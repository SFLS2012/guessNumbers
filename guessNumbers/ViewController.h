//
//  ViewController.h
//  guessNumbers
//
//  Created by 朱 皓斌 on 12-9-17.
//  Copyright (c) 2012年 朱 皓斌. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *number;
- (IBAction)submit:(id)sender;

@end
