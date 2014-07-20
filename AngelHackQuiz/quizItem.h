//
//  quizItem.h
//  AngelHackQuiz
//
//  Created by Saiteja Samudrala on 7/19/14.
//  Copyright (c) 2014 Urbanoid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface quizItem : NSObject
@property (nonatomic) NSString * answer;
@property (nonatomic) NSString * question;

-(id)init;

@end
