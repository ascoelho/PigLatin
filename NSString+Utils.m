//
//  NSString+Utils.m
//  PigLatin
//
//  Created by Anthony Coelho on 2016-05-06.
//  Copyright © 2016 Vectura. All rights reserved.
//

#import "NSString+Utils.h"

@implementation NSString (Utils)

-(NSString *)stringByPigLatinization{
    
    
    if (self.length==0) {
        return nil;
    }
    
    NSMutableString *result = [NSMutableString new];
    
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiou"];
    NSArray *words = [self componentsSeparatedByString:@" "];
    

    
    for (NSString *string in words) {
        
        NSRange range = [string rangeOfCharacterFromSet:vowels];
        NSRange firstRange = NSMakeRange(0, range.location);
        
        NSString *str1 = [string substringWithRange:firstRange];
        
        NSRange lastRange = NSMakeRange(range.location, (string.length - range.location));
        
        NSString *str2 = [string substringWithRange:lastRange];
        
        [result appendString:str2];
        [result appendString:str1];
        [result appendString:@"ay "];

    }
    
    return result;
}


@end
