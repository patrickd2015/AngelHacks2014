//
//  ViewController.h
//  AngelHackQuiz
//
//  Copyright (c) 2014 Urbanoid. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface ViewController : UIViewController
@property (nonatomic) NSMutableArray * physics;
@property (nonatomic) IBOutlet UIImageView * jackson;
@property (nonatomic) NSMutableArray * physicsq;
@property (nonatomic) NSMutableArray * math;
@property (nonatomic) NSMutableArray * mathq;
@property (nonatomic) NSMutableArray * chemistry;
@property (nonatomic) NSMutableArray * chemistryq;
@property (nonatomic) NSMutableArray * biology;
@property (nonatomic) NSMutableArray * biologyq;
@property (nonatomic) NSMutableArray * history;
@property (nonatomic) NSMutableArray * historyq;
@property (nonatomic) NSString * category;
@property (nonatomic) IBOutlet UIButton * askquestion;
@property (nonatomic) IBOutlet UIButton * answerquestion;
@property (nonatomic) IBOutlet UIButton * submitbutton;
@property (nonatomic) IBOutlet UIButton * takequiz;
@property (nonatomic) IBOutlet UIButton * addquestion;
@property (nonatomic) IBOutlet UILabel * headlabel;
@property (nonatomic) IBOutlet UITextField * askfield;
@property (nonatomic) IBOutlet UIButton* physicsb;
@property (nonatomic) IBOutlet UIButton * mathb;
@property (nonatomic) IBOutlet UIButton * chemistryb;
@property (nonatomic) IBOutlet UIButton * biologyb;
@property (nonatomic) IBOutlet UIButton * historyb;
@property (nonatomic) IBOutlet UILabel * questionlabel;
@property (nonatomic) IBOutlet UITextView * textview;
@property (nonatomic) NSString * useractiontype;
@property (nonatomic) IBOutlet UIButton * next;
@property (nonatomic) int a;
@property (nonatomic) int b;
@property (nonatomic) int c;
@property (nonatomic) int d;
@property (nonatomic) int e;
@property (nonatomic) int f;
-(IBAction)next:(id)sender;
-(IBAction)askanswertake:(id)sender;
-(IBAction)submitquestion:(id)sender;
-(IBAction)getcategory:(id)sender;
-(IBAction)kill:(id)sender ;
-(IBAction)back:(id)sender;
@end
