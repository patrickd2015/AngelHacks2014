//
//  QuiViewController.h
//  AngelHackQuiz
//
//  Copyright (c) 2014 Urbanoid. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface QuiViewController : UIViewController
@property (nonatomic) NSMutableArray * physics;
@property (nonatomic) NSMutableArray * physicsq;
@property (nonatomic) NSMutableArray * math;
@property (nonatomic) NSMutableArray * mathq;
@property (nonatomic) NSMutableArray * chemistry;
@property (nonatomic) NSMutableArray * chemistryq;
@property (nonatomic) NSMutableArray * biology;
@property (nonatomic) NSMutableArray * biologyq;
@property (nonatomic) NSMutableArray * history;
@property (nonatomic) NSMutableArray * historyq;
@property (nonatomic) NSMutableArray * useranswers;
@property (nonatomic) NSMutableArray * chemrepeat;
@property (nonatomic) NSMutableArray * biorepeat;
@property (nonatomic) NSMutableArray * historepeat;
@property (nonatomic) NSMutableArray * mathrepeat;
@property (nonatomic) NSMutableArray * physrepeat;
@property (nonatomic) NSString * akey;
@property (nonatomic) NSString * bkey;
@property (nonatomic) NSString * ckey;
@property (nonatomic) NSString * dkey;
@property (nonatomic) NSString * ekey;
@property (nonatomic) IBOutlet UILabel * label;
@property (nonatomic) IBOutlet UILabel * questionlabel;
@property (nonatomic) IBOutlet UILabel * answerlabel;
@property (nonatomic) IBOutlet UIButton* physicsb;
@property (nonatomic) IBOutlet UIButton * mathb;
@property (nonatomic) IBOutlet UIButton * chemistryb;
@property (nonatomic) IBOutlet UIButton * biologyb;
@property (nonatomic) IBOutlet UIButton * historyb;
@property (nonatomic) IBOutlet UITextField * field;
@property (nonatomic) IBOutlet UIButton * show;
@property (nonatomic) IBOutlet UIButton * next;
@property (nonatomic) IBOutlet UILabel * mylabel;
@property (nonatomic) int a ;
@property (nonatomic) int b ;
@property (nonatomic) int c ;
@property (nonatomic) int d ;
@property (nonatomic) int e ;
@property (nonatomic) int f ;
@property (nonatomic) int g ;
@property (nonatomic) int h ;
@property (nonatomic) int i ;
@property (nonatomic) int j ;
@property (nonatomic) int aa ;
@property (nonatomic) int bb ;
@property (nonatomic) int cc ;
@property (nonatomic) int dd ;
@property (nonatomic) int ee ;

@property (nonatomic) NSString * category;

-(IBAction)nextans:(id)sender;
-(IBAction)showans:(id)sender;
-(IBAction)getcategory:(id)sender;
-(IBAction)kill:(id)sender;
@end
