//
//  ViewController.m
//  AngelHackQuiz
//
//  Copyright (c) 2014 Urbanoid. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    PFObject *questionAnswers;
    NSString *currentObjectID;
}

- (void)viewDidLoad
{ _category = [NSString stringWithFormat:@""];
    _a=0;
    _b=0;
    _c=0;
    _d=0;
    _e=0;
    
    
    _physics = [[NSMutableArray alloc]init];
    _biology = [[NSMutableArray alloc]init];
    _chemistry = [[NSMutableArray alloc]init];
    _history = [[NSMutableArray alloc]init];
    _math = [[NSMutableArray alloc]init];
    
    _physicsq = [[NSMutableArray alloc]init];
    _biologyq = [[NSMutableArray alloc]init];
    _chemistryq = [[NSMutableArray alloc]init];
    _historyq = [[NSMutableArray alloc]init];
    _mathq = [[NSMutableArray alloc]init];
    
    [super viewDidLoad];
	_useractiontype = [NSString stringWithFormat:@""];
    
    questionAnswers = [PFObject objectWithClassName:@"questionAnswers"];
    
    [self retrivePreviousID];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)askanswertake:(id)sender{
    
    UIButton * button = (UIButton*)sender;
    _useractiontype = button.titleLabel.text;
    _askquestion.hidden = YES;
    _answerquestion.hidden = YES;
    _takequiz.hidden = YES;
    _historyb.hidden = NO;
    _chemistryb.hidden = NO;
    _physicsb.hidden = NO;
    _biologyb.hidden = NO;
    _mathb.hidden = NO;
    _headlabel.text = @"Ask";
    _jackson.hidden = YES;
    
    
}

-(IBAction)next:(id)sender { //dosaislife
    
    if([_category isEqualToString: @"Chemistry"]) {
        
        NSLog(@"%d", [_chemistry count]);
        NSLog(@"%d", _a);
        if(( _a >= [_chemistry count]) == false){
            
            NSLog(@"%d", [_chemistry count]);
            
            _textview.text = [_chemistry objectAtIndex:_a];
            _a++;
        } else {
            _textview.text = @"no more questions1";
        }
    }
    
    if([_category isEqualToString: @"Biology"]) {
        if(( _b >= [_biology count]) == false){
            
            _textview.text = [_biology objectAtIndex:_b];
            _b++;
        }else {
            _textview.text = @"no more questions2";
        }}
    
    if([_category isEqualToString: @"History"]) {
        if(( _c >= [_history count]) == false){
            
            _textview.text = [_history objectAtIndex:_c];
            _c++;
        }else {
            _textview.text = @"no more questions3";
        }}
    
    if([_category isEqualToString: @"Math"]) {
        
        if(( _d >= [_math count]) == false){
            _textview.text = [_math objectAtIndex:_d];
            _d++;
        }else {
            _textview.text = @"no more questions4";
        }}
    
    if([_category isEqualToString: @"Physics"]) {
        if( (_e >= [_physics count]) == false){
            
            _textview.text = [_physics objectAtIndex:_e];
            _e++;
        }else {
            _textview.text = @"no more questions5";
        }}
    
}

-(IBAction)submitquestion:(id)sender {
    
    if([_useractiontype isEqualToString:@"Answer"]) {
        
        if([_category isEqualToString: @"Chemistry"]) {
            
             if( _a < [_chemistry count]) {
            NSString*answer= _askfield.text;
            
            [_chemistryq replaceObjectAtIndex:_a withObject:answer];
             _askfield.text = @"";
                 [self pushToCloud];
            _a++;
             }}
        
        if([_category isEqualToString: @"Biology"]) {
            
              if( _b < [_biology count]) {
            NSString*answer= _askfield.text;
            
            [_biologyq replaceObjectAtIndex:_a withObject:answer];
             _askfield.text = @"";
                  [self pushToCloud];
            _b++;
              }}
        
        if([_category isEqualToString: @"History"]) {
            
            if( _c < [_history count]) {

            NSString*answer= _askfield.text;
            
            [_historyq replaceObjectAtIndex:_a withObject:answer];
             _askfield.text = @"";
                [self pushToCloud];
            _c++;
            
            }}
        
        if([_category isEqualToString: @"Math"]) {
            
            if( _d < [_math count]) {
            NSString*answer= _askfield.text;
            [_mathq replaceObjectAtIndex:_d withObject:answer];
             _askfield.text = @"";
                [self pushToCloud];
                _d++;}
        }
        
        if([_category isEqualToString: @"Physics"]) {
            
            if( _e < [_physics count]) {
            NSString*answer= _askfield.text;
            
            [_physicsq replaceObjectAtIndex:_e withObject:answer];
             _askfield.text = @"";
                [self pushToCloud];
            _e++;
            }}
        
        
        
    }
    
    if([_useractiontype isEqualToString:@"Ask"]) {
        
        NSLog(@"%@",_category);
        
        if([_category isEqualToString: @"Chemistry"]) {
            
            NSLog(@"%@",_category);
            
            
            NSString *question = _askfield.text;
            [_chemistry addObject:question];
            [_chemistryq addObject:@""];
            _askfield.text = @"";
            [self pushToCloud];
        }
        
        if([_category isEqualToString: @"Biology"]) {
            
            NSString *question = _askfield.text;
            [_biology addObject:question];
            [_biologyq addObject:@""];
             _askfield.text = @"";
            [self pushToCloud];
            
        }
        
        if([_category isEqualToString: @"History"]) {
            
            
            NSString *question = _askfield.text;
            [_history addObject:question];
            [_historyq addObject:@""];
            _askfield.text = @"";
            [self pushToCloud];
        }
        
        if([_category isEqualToString: @"Math"]) {
            
            NSString *question = _askfield.text;
            [_math addObject:question];
            [_mathq addObject:@""];
             _askfield.text = @"";
            [self pushToCloud];
        }
        
        if([_category isEqualToString: @"Physics"]) {
            
            NSString *question = _askfield.text;
            [_physics addObject:question];
            [_physicsq addObject:@""];
            _askfield.text = @"";
            [self pushToCloud];
        }
    }
    
    
    
}

-(IBAction)getcategory:(id)sender{
    
    if([_useractiontype isEqualToString:@"Answer"]) {
        
        
        UIButton * title = (UIButton* )sender;
        _category = title.titleLabel.text;
        _historyb.hidden = YES;
        _chemistryb.hidden = YES;
        _physicsb.hidden = YES;
        _biologyb.hidden = YES;
        _mathb.hidden = YES;
        _askfield.text = @"";
        _askfield.hidden = NO;
        _textview.hidden = NO;
        _next.hidden = NO;
        _submitbutton.hidden = NO;
        if([_category isEqualToString: @"Chemistry"]) {
        if(![[_chemistryq objectAtIndex:_a] isEqualToString:@""]) {
            if(_a != [_chemistryq count]) {
                
            
                _a++;
            
            } else {
                
                _textview.text = @"no questions to answer";
                
            }}
            NSString * question = [_chemistry objectAtIndex:_a];
            _textview.text = question;
            
        }
        
        if([_category isEqualToString: @"Biology"]) {
            
            if(![[_biologyq objectAtIndex:_a] isEqualToString:@""]) {
                if(_a != [_biologyq count]) {
                    
                    
                    _b++;
                    
                } else {
                    
                    _textview.text = @"no questions to answer";
                    
                }}
            NSString * question = [_biology objectAtIndex:_b];
            _textview.text = question;
        }
        
        if([_category isEqualToString: @"History"]) {
            
            if(![[_historyq objectAtIndex:_a] isEqualToString:@""]) {
                if(_c != [_historyq count]) {
                    
                    
                    _c++;
                    
                } else {
                    
                    _textview.text = @"no questions to answer";
                    
                }}
            NSString * question = [_history objectAtIndex:_c];
            _textview.text = question;
        }
        
        if([_category isEqualToString: @"Math"]) {
            if(![[_math objectAtIndex:_d] isEqualToString:@""]) {
                if(_a != [_mathq count]) {
                    
                    
                    _d++;
                    
                } else {
                    
                    _textview.text = @"no questions to answer";
                    
                }}
            NSString * question = [_math objectAtIndex:_d];
            _textview.text = question;
        }
        
        if([_category isEqualToString: @"Physics"]) {
            if(![[_physicsq objectAtIndex:_e] isEqualToString:@""]) {
                if(_a != [_physicsq count]) {
                    
                    
                    _e++;
                    
                } else {
                    
                    _textview.text = @"no questions to answer";
                    
                }}
            NSString * question = [_physics objectAtIndex:_e];
            _textview.text = question;
            
        }
        
        
    }
    
    
    if([_useractiontype isEqualToString:@"Ask"]) {
        UIButton * title = (UIButton* )sender;
        _category = title.titleLabel.text;
        _askfield.hidden = NO;
        _questionlabel.hidden = NO;
        _submitbutton.hidden = NO;
        _historyb.hidden = YES;
        _chemistryb.hidden = YES;
        _physicsb.hidden = YES;
        _biologyb.hidden = YES;
        _mathb.hidden = YES;
    }
}

-(IBAction)kill:(id)sender {
    
    [sender resignFirstResponder];
}

-(IBAction)backtomenu:(id)sender {
    _jackson.hidden = NO;
    _askfield.hidden = YES;
    _questionlabel.hidden = YES;
    _submitbutton.hidden = YES;
    _historyb.hidden = YES;
    _chemistryb.hidden = YES;
    _physicsb.hidden = YES;
    _biologyb.hidden = YES;
    _mathb.hidden = YES;
    _askquestion.hidden = NO;
    _answerquestion.hidden = NO;
    _takequiz.hidden = NO;
    _next.hidden = YES;
    _textview.hidden = YES;
    _a=0;
    _b=0;
    _c=0;
    _d=0;
    _e=0;
}

-(IBAction)backtocategorymenu:(id)sender {
    
    _askfield.hidden = YES;
    _questionlabel.hidden = YES;
    _submitbutton.hidden = YES;
    _historyb.hidden = NO;
    _chemistryb.hidden = NO;
    _physicsb.hidden = NO;
    _biologyb.hidden = NO;
    _mathb.hidden = NO;
    _askquestion.hidden = YES;
    _answerquestion.hidden = YES;
    _takequiz.hidden = YES;
     _a=0;
    _b=0;
    _c=0;
    _d=0;
    _e=0;
    
    
}

-(void)pushToCloud{
    questionAnswers[@"Chemistry"] = _chemistry;
    questionAnswers[@"Biology"] = _biology;
    questionAnswers[@"History"] = _history;
    questionAnswers[@"Math"] = _math;
    questionAnswers[@"Physics"] = _physics;
    
    questionAnswers[@"ChemistryQ"] = _chemistryq;
    questionAnswers[@"BiologyQ"] = _biologyq;
    questionAnswers[@"HistoryQ"] = _historyq;
    questionAnswers[@"MathQ"] = _mathq;
    questionAnswers[@"PhysicsQ"] = _physicsq;
    
    [questionAnswers saveInBackground];
}

-(void)retrivePreviousID{
    PFQuery *query = [PFQuery queryWithClassName:@"questionAnswers"];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            // Do something with the found objects
            for (PFObject *object in objects) {
                currentObjectID = object.objectId;
                NSLog(@"%@", currentObjectID);
                
                _chemistry = object[@"Chemistry"];
                _chemistryq = object[@"ChemistryQ"];
                
                _biology = object[@"Biology"];
                _biologyq = object[@"BiologyQ"];
                
                _history = object[@"History"];
                _historyq = object[@"HistoryQ"];
                
                _math = object[@"Math"];
                _mathq = object[@"MathQ"];
                
                _physics = object[@"Physics"];
                _physics = object[@"PhysicsQ"];
            }
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
}

-(void)updateToCloud{
    PFQuery *query = [PFQuery queryWithClassName:@"questionAnswers"];
    
    // Retrieve the object by id
    [query getObjectInBackgroundWithId:currentObjectID block:^(PFObject *Answers, NSError *error) {
        
        // Now let's update it with some new data. In this case, only cheatMode and score
        // will get sent to the cloud. playerName hasn't changed.
        
        questionAnswers[@"Chemistry"] = _chemistry;
        questionAnswers[@"Biology"] = _biology;
        questionAnswers[@"History"] = _history;
        questionAnswers[@"Math"] = _math;
        questionAnswers[@"Physics"] = _physics;
        
        questionAnswers[@"ChemistryQ"] = _chemistryq;
        questionAnswers[@"BiologyQ"] = _biologyq;
        questionAnswers[@"HistoryQ"] = _historyq;
        questionAnswers[@"MathQ"] = _mathq;
        questionAnswers[@"PhysicsQ"] = _physicsq;
        
        [questionAnswers saveInBackground];
    }];
}

@end
