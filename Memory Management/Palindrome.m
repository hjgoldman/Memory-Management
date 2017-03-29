//
//  Palindrome.m
//  Memory Management
//
//  Created by Hayden Goldman on 3/27/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

#import "Palindrome.h"

@implementation Palindrome

-(BOOL) isPalindrome: (NSString*) originalWord{
    
    NSString *input = originalWord;
    NSMutableString *reversedString = [NSMutableString string];
    
    for (NSInteger i = input.length - 1; i >= 0; i--) {
        
        NSString *character = [input substringWithRange:NSMakeRange(i, 1)];
        [reversedString appendString:character];
    }
    
    if ([input isEqualToString:reversedString]){
        return true;
    } else {
        return false;
    }
    
}

@end
