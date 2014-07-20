//
//  quizItem.m
//  AngelHackQuiz
//
//  Created by Saiteja Samudrala on 7/19/14.
//  Copyright (c) 2014 Urbanoid. All rights reserved.
//

#import "quizItem.h"

@implementation quizItem
-(id)init {
    
    id newInstance = [super init];
    
    if(newInstance){
        
    _question = [NSString stringWithFormat:@""];
        _answer = [NSString stringWithFormat:@""];
        
        return newInstance;
    }
    return nil;
}



@end
