//
//  ViewController.m
//  Memory Management
//
//  Created by Hayden Goldman on 3/27/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)verifyButtonPressed {
    
    Palindrome *palindrome = [[Palindrome alloc] init];
    
    BOOL isPalindrome = [palindrome isPalindrome:self.inputTextField.text];
    
    if (isPalindrome == YES){
        self.resultLabel.text = @"Palindrome";
    } else {
        self.resultLabel.text = @"Not a Palindrome";
    }
    
    [palindrome release];
    
}

@end
