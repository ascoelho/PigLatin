//
//  main.m
//  PigLatin
//
//  Created by Anthony Coelho on 2016-05-06.
//  Copyright © 2016 Vectura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+Utils.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSLog(@"Please enter a string to translate into pig latin");
        NSLog(@"> ");
        char str[100];
        fgets (str, 100, stdin);
        
        NSString *inputString = [[NSString alloc] initWithUTF8String:str];
        inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        NSLog(@"%@",[inputString stringByPigLatinization]);
    
    }
    return 0;
}
