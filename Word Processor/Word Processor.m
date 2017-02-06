//
//  Word Processor.m
//  Word Processor
//
//  Created by Sreekala Santhakumari on 2/4/17.
//  Copyright © 2017 Klas. All rights reserved.
//

#import "Word Processor.h"

@implementation Word_Processor

-(int) letterCount : (NSString*) sentences {
    
    NSUInteger chracterCount = [ sentences length];
    
    return chracterCount;
}


-(int) sentenceCount : (NSString*) sentences {
    
    NSArray *listOfSentence = [sentences componentsSeparatedByString:(@".")];
    
    int arrayCount = [listOfSentence count];
    
    int sentenceCount = arrayCount -1;
    
    return sentenceCount;
}


-(int) vowelCount : (NSString*) sentences {
    
    int lengthOfSentence = [sentences length];

    int vowelCount = 0;
    
    for ( int count = 0; count < lengthOfSentence; count++ ){
        
        char vowel = [sentences characterAtIndex:count];
        
        if ( vowel == 'a' || vowel == 'e' || vowel == 'i' || vowel == 'o' || vowel == 'u' || vowel == 'A' || vowel == 'E' || vowel == 'I' || vowel == 'O' || vowel == 'U') {
        
            vowelCount++;
        }
    
    }
    
    return vowelCount;

}

@end
