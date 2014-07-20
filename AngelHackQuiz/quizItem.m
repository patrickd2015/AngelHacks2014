//
//  quizItem.m
//  AngelHackQuiz
//
//  Created by Saiteja Samudrala on 7/19/14.
//  Copyright (c) 2014 Urbanoid. All rights reserved.
//

#import "quizItem.h"

@implementation quizItem

-(void)addQuestion:(NSString*) newQuestion {
    self.askedQuestion = newQuestion;
}

-(void)addAnswer: (NSString*) newAnswer{
    self.answer = newAnswer;
}

-(id)initWithQuestion:(NSString *)aQuestion{
    if(self = [super init])
    {
        self.askedQuestion = aQuestion;
        self.answer = @"";
    }
    return self;
}

-(id)initWithQuestion:(NSString *)aQuestion andAnswer:(NSString *)aAnswer{
    if(self = [super init])
    {
        self.askedQuestion = aQuestion;
        self.answer = aAnswer;
    }
    return self;
}

-(id)init {
    
    id newInstance = [super init];
    
    if(newInstance){
        
    _askedQuestion = [NSString stringWithFormat:@""];
        _answer = [NSString stringWithFormat:@""];
        
        return newInstance;
    }
    return nil;
}



@end
