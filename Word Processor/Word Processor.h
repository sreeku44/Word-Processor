//
//  Word Processor.h
//  Word Processor
//
//  Created by Sreekala Santhakumari on 2/4/17.
//  Copyright © 2017 Klas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Word_Processor : NSObject

-(int) letterCount : (NSString*) sentences;

-(int) sentenceCount : (NSString*) sentences;

-(int) vowelCount : (NSString*) sentences;



@end
