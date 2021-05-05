//
//  ViewController.m
//  Simple Calculator
//
//  Created by Aryan Shaikh on 31/03/18.
//  Copyright © 2018 Aryan Shaikh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    OperatorPressed = FALSE;
    firstEntry = NULL;
    secondEntry = NULL;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)clearPressed:(id)sender {
    _LabelOutput.text = NULL;
    firstEntry = NULL;
    secondEntry = NULL;
}

- (IBAction)addPressed:(id)sender {
    add  = TRUE;
    OperatorPressed = TRUE;
}

- (IBAction)subPressed:(id)sender {
    add = FALSE;
    OperatorPressed = TRUE;
}

- (IBAction)equalPressed:(id)sender {
    if (add == FALSE) {
        int outputNum = [firstEntry intValue] - [secondEntry intValue];
        _LabelOutput.text = [NSString stringWithFormat: @"%i",outputNum];
    }
    else{
        int outputNum = [firstEntry intValue] + [secondEntry intValue];
        _LabelOutput.text = [NSString stringWithFormat: @"%i",outputNum];
    }
    OperatorPressed = FALSE;
    firstEntry = NULL;
    secondEntry = NULL;
}
- (IBAction)numberPressed:(UIButton*)sender{
    long tag = sender.tag;
    
    if (OperatorPressed == FALSE){
        if (firstEntry == NULL){
            firstEntry = [NSString stringWithFormat:@"%li",tag];
            _LabelOutput.text = firstEntry;
            
        }
        else{
             firstEntry = [NSString stringWithFormat:@"%@%li",firstEntry,tag];
            _LabelOutput.text = firstEntry;
        }
    }
    else{
        if(secondEntry==NULL){
            secondEntry=[NSString stringWithFormat:@"%li",tag];
            _LabelOutput.text=secondEntry;
            
        }
        else{
            secondEntry=[NSString stringWithFormat:@"%@%li",secondEntry,tag];
            _LabelOutput.text = secondEntry;
        }
        }
    }
@end
