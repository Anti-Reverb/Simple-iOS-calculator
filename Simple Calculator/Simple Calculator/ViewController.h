//
//  ViewController.h
//  Simple Calculator
//
//  Created by Aryan Shaikh on 31/03/18.
//  Copyright © 2018 Aryan Shaikh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    bool OperatorPressed;
    bool add;
    char op;//operator
    NSString *firstEntry;
    NSString *secondEntry;
}

@property (weak, nonatomic) IBOutlet UILabel *LabelOutput;
- (IBAction)clearPressed:(id)sender;
- (IBAction)addPressed:(id)sender;
- (IBAction)subPressed:(id)sender;
- (IBAction)equalPressed:(id)sender;

- (IBAction)numberPressed:(UIButton*)sender;
@end
