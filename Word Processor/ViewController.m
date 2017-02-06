//
//  ViewController.m
//  Word Processor
//
//  Created by Sreekala Santhakumari on 2/3/17.
//  Copyright © 2017 Klas. All rights reserved.
//

#import "ViewController.h"
#import "Word Processor.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


-(IBAction)statusButtonPressed {
    
    //    NSString *textEntered = self.textField.text;
    //
    //    NSUInteger charactercount = [textEntered  length];
    
    
    NSString *sentencesEntered = self.textField.text;
    
    Word_Processor * wordProcessor = [[Word_Processor alloc] init];
    
    int characterCount = [wordProcessor letterCount:sentencesEntered];
    
    NSString *statusCharacterCount = [NSString stringWithFormat: @"The character count is %d", characterCount];
    
    //self.statusLabel.text = statusCharacterCount;
    
    
    int sentenceCount = [wordProcessor sentenceCount:sentencesEntered];
    
    NSString *statusSentenceCount = [NSString stringWithFormat:@"The sentence count is %d", sentenceCount];
    
    //self.statusLabel.text = statusSentenceCount;
    
    
    int vowelCount = [wordProcessor vowelCount:sentencesEntered];
    
    NSString *statusVowelCount = [NSString stringWithFormat:@"The vowel count is %d", vowelCount];
    
    //self.statusLabel.text =  statusVowelCount;
    
    NSString *status = [NSString stringWithFormat:@"%@ \n %@ \n %@", statusCharacterCount, statusSentenceCount, statusVowelCount];

    self.statusLabel.text = status;
    

//    
//    NSArray *listOFSentence = [textEntered componentsSeparatedByString:@"."];
//    
//    NSUInteger countOfArray = [listOFSentence count];
//    
//    NSUInteger sentenceCount = countOfArray - 1;
//    
//    NSLog(@"%lu" , (unsigned long)sentenceCount );
    
//    int vowelCount = 0;
//    
//    for (int count = 0;  count< textEntered.length; count++) {
//        
//       char vowel  = [textEntered characterAtIndex:count];
//        
//        if (vowel == 'a' ||  vowel =='e' || vowel =='i' || vowel =='o' || vowel =='u' || vowel == 'A' || vowel == 'E' || vowel == 'I' || vowel == 'O' || vowel == 'U' )
//            
//        {vowelCount++;}
//        
//        NSLog(@"%d", vowelCount);
    
        
        
   // }
    


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
