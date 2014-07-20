//
//  ViewController.m
//  AngelHackQuiz
//
//  Created by Saiteja Samudrala on 7/19/14.
//  Copyright (c) 2014 Urbanoid. All rights reserved.
//

#import "ViewController.h"
#import "quizItem.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{ _category = [NSString stringWithFormat:@""];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)ask:(id)sender {
    _askquestion.hidden = YES;
    _answerquestion.hidden = YES;
    _takequiz.hidden = YES;
    _historyb.hidden = NO;
    _chemistryb.hidden = NO;
    _physicsb.hidden = NO;
    _biologyb.hidden = NO;
    _mathb.hidden = NO;
    _headlabel.text = @"Ask";
    

}

-(IBAction)submitquestion:(id)sender {
    
    
    
    if([_category isEqualToString: @"chemistryb"]) {
        
        quizItem * item = [[quizItem alloc]init];
        item.question = _askfield.text;
        [_chemistry addObject:item.question];
    }
    
    if([_category isEqualToString: @"biology"]) {
        
        quizItem * item = [[quizItem alloc]init];
        item.question = _askfield.text;
        [_biology addObject:item.question];

    }
    
    if([_category isEqualToString: @"historyb"]) {
        
        quizItem * item = [[quizItem alloc]init];
        item.question = _askfield.text;
        [_history addObject:item.question];

    }
    
    if([_category isEqualToString: @"mathb"]) {
        
        quizItem * item = [[quizItem alloc]init];
        item.question = _askfield.text;
        [_math addObject:item.question];
    }
    
    if([_category isEqualToString: @"physicsb"]) {
        
        quizItem * item = [[quizItem alloc]init];
        item.question = _askfield.text;
        [_physics addObject:item.question];

    }

    
    
    
}

-(IBAction)getcategory:(id)sender{
    
    UIButton * title = (UIButton* )sender;
    NSString * category = title.titleLabel.text;
    _askfield.hidden = NO;
    _questionlabel.hidden = NO;
    
    _historyb.hidden = NO;
    _chemistryb.hidden = NO;
    _physicsb.hidden = NO;
    _biologyb.hidden = NO;
    _mathb.hidden = NO;

}

@end
