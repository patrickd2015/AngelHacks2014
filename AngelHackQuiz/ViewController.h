//
//  ViewController.h
//  AngelHackQuiz
//
//  Created by Saiteja Samudrala on 7/19/14.
//  Copyright (c) 2014 Urbanoid. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (nonatomic) NSMutableArray * physics;
@property (nonatomic) NSMutableArray * math;
@property (nonatomic) NSMutableArray * chemistry;
@property (nonatomic) NSMutableArray * biology;
@property (nonatomic) NSMutableArray * history;
@property (nonatomic) NSString * category;
@property (nonatomic) IBOutlet UIButton * askquestion;
@property (nonatomic) IBOutlet UIButton * answerquestion;
@property (nonatomic) IBOutlet UIButton * takequiz;
@property (nonatomic) IBOutlet UIButton * addquestion;
@property (nonatomic) IBOutlet UILabel * headlabel;
@property (nonatomic) IBOutlet UITextView * askfield;
@property (nonatomic) IBOutlet UIButton* physicsb;
@property (nonatomic) IBOutlet UIButton * mathb;
@property (nonatomic) IBOutlet UIButton * chemistryb;
@property (nonatomic) IBOutlet UIButton * biologyb;
@property (nonatomic) IBOutlet UIButton * historyb;
@property (nonatomic) IBOutlet UILabel * questionlabel;

-(IBAction)ask:(id)sender;
-(IBAction)submitquestion:(id)sender;
-(IBAction)getcategory:(id)sender;
@end
