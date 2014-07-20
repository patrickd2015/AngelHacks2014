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
    [super viewDidLoad];
	_useractiontype = [NSString stringWithFormat:@""];
    
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
    

}

-(IBAction)next:(id)sender {
   if([_category isEqualToString: @"Chemistry"]) {
    quizItem * item = [[quizItem alloc]init];
    item = [_chemistry objectAtIndex:_a];
    _textview.text = item.question;
   }

    if([_category isEqualToString: @"Biology"]) {
        quizItem * item = [[quizItem alloc]init];
        item = [_biology objectAtIndex:_b];
        _textview.text = item.question;
    }

    

    if([_category isEqualToString: @"History"]) {
        quizItem * item = [[quizItem alloc]init];
        item = [_history objectAtIndex:_c];
        _textview.text = item.question;
    }

    if([_category isEqualToString: @"Math"]) {
        quizItem * item = [[quizItem alloc]init];
        item = [_math objectAtIndex:_d];
        _textview.text = item.question;
    }

    if([_category isEqualToString: @"Physics"]) {
        quizItem * item = [[quizItem alloc]init];
        item = [_physics objectAtIndex:_e];
        _textview.text = item.question;
    }
}


-(IBAction)submitquestion:(id)sender {
    
   if([_useractiontype isEqualToString:@"Answer a question"]) {
    
       if([_category isEqualToString: @"Chemistry"]) {
           
           quizItem * item = [[quizItem alloc]init];
          item = [_chemistry objectAtIndex:_a];
           item.answer = _askfield.text;
           
           [_chemistry replaceObjectAtIndex:_a withObject: item];
           _a++;
       }
       
       if([_category isEqualToString: @"Biology"]) {
           
           quizItem * item = [[quizItem alloc]init];
           item = [_biology objectAtIndex:_b];
           item.answer = _askfield.text;
           [_biology replaceObjectAtIndex:_b withObject: item];
       _b++;
       }
       
       if([_category isEqualToString: @"History"]) {
           
           quizItem * item = [[quizItem alloc]init];
           item = [_history objectAtIndex:_c];
           item.answer = _askfield.text;
           [_history replaceObjectAtIndex:_c withObject: item];
           _c++;
       }
       
       if([_category isEqualToString: @"Math"]) {
           
           quizItem * item = [[quizItem alloc]init];
           item = [_math objectAtIndex:_d];
           item.answer = _askfield.text;
           [_math replaceObjectAtIndex:_d withObject: item];
           _d++;
       }
       
       if([_category isEqualToString: @"Physics"]) {
           
           quizItem * item = [[quizItem alloc]init];
           item = [_physics objectAtIndex:_e];
           item.answer = _askfield.text;
           [_physics replaceObjectAtIndex:_e withObject: item];
       _e++;
       }

    
    
   }
   
    if([_useractiontype isEqualToString:@"Ask a question"]) {
    
        NSLog(@"%@",_category);
        
    if([_category isEqualToString: @"Chemistry"]) {
    
        NSLog(@"%@",_category);
        
        quizItem * item = [[quizItem alloc]init];
        item.question = _askfield.text;
        [_chemistry addObject:item];
        [self pushToCloud];
    }
    
    if([_category isEqualToString: @"Biology"]) {
        
        quizItem * item = [[quizItem alloc]init];
        item.question = _askfield.text;
        [_biology addObject:item];

    }
    
    if([_category isEqualToString: @"History"]) {
        
        quizItem * item = [[quizItem alloc]init];
        item.question = _askfield.text;
        [_history addObject:item];

    }
    
    if([_category isEqualToString: @"Math"]) {
        
        quizItem * item = [[quizItem alloc]init];
        item.question = _askfield.text;
        [_math addObject:item];
        NSLog(@"%@",item);
    
    }
    
    if([_category isEqualToString: @"Physics"]) {
        
        quizItem * item = [[quizItem alloc]init];
        item.question = _askfield.text;
        [_physics addObject:item];

    }
    }
    
    
    
}

-(IBAction)getcategory:(id)sender{
   
    if([_useractiontype isEqualToString:@"Answer a question"]) {
    
        
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
            
            quizItem * item = [[quizItem alloc]init];
           
          item = [_chemistry objectAtIndex:_a];
            _textview.text = item.question;
            
        }
        
        if([_category isEqualToString: @"Biology"]) {
            
            quizItem * item = [[quizItem alloc]init];
    
            item = [_biology objectAtIndex:_b];
            _textview.text = item.question;
            
        }
        
        if([_category isEqualToString: @"History"]) {
            
            quizItem * item = [[quizItem alloc]init];
            
            item = [_history objectAtIndex:_c];
            _textview.text = item.question;
            
        }
        
        if([_category isEqualToString: @"Math"]) {
            
            quizItem * item = [[quizItem alloc]init];
            
            item = [_math objectAtIndex:_d];
            
            NSLog(@"%@",item.question);
            _textview.text = item.question;
            
        }
        
        if([_category isEqualToString: @"Physics"]) {
            
            quizItem * item = [[quizItem alloc]init];
            item = [_physics objectAtIndex:_e];
            _textview.text = item.question;
            
        }

        
    }
    
    if([_useractiontype isEqualToString:@"Take a quiz"]) {
        
        
        
        
    }

    
    if([_useractiontype isEqualToString:@"Ask a question"]) {
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

    
}

-(void)pushToCloud{
    PFObject *questionAnswers = [PFObject objectWithClassName:@"questionAnswers"];
    questionAnswers[@"Chemistry"] = _chemistry;
    questionAnswers[@"Biology"] = _biology;
    questionAnswers[@"History"] = _history;
    questionAnswers[@"Math"] = _math;
    questionAnswers[@"Physics"] = _physics;
    [questionAnswers saveInBackground];
}

@end
