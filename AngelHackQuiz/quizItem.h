//
//  quizItem.h
//  AngelHackQuiz
//
//  Created by Saiteja Samudrala on 7/19/14.
//  Copyright (c) 2014 Urbanoid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface quizItem : NSObject

@property(strong) NSString *question;
@property(strong) NSString *answer;

-(void)addQuestion: (NSString *)newQuestion;
-(void)addAnswer: (NSString *)newAnswer;

-(id) init;
-(id)initWithQuestion:(NSString *)aQuestion;
-(id)initWithQuestion:(NSString *)aQuestion andAnswer: (NSString *)aAnswer;

@end
