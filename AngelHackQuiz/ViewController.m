//
//  ViewController.m
//  AngelHackQuiz
//
//  Created by Saiteja Samudrala on 7/19/14.
//  Copyright (c) 2014 Urbanoid. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    PFObject *questionAnswers;
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
       _textview.text = [_chemistry objectAtIndex:_a];
   }

    if([_category isEqualToString: @"Biology"]) {
        _textview.text = [_biology objectAtIndex:_b];
    }

    if([_category isEqualToString: @"History"]) {
        _textview.text = [_history objectAtIndex:_c];
    }

    if([_category isEqualToString: @"Math"]) {
        _textview.text = [_math objectAtIndex:_d];
    }

    if([_category isEqualToString: @"Physics"]) {
        _textview.text = [_physics objectAtIndex:_e];
    }
}

-(IBAction)submitquestion:(id)sender {
    
   if([_useractiontype isEqualToString:@"Answer a question"]) {
    
       if([_category isEqualToString: @"Chemistry"]) {
           
          [_chemistryq objectAtIndex:_a];
           NSString*answer= _askfield.text;
           
           [_chemistry replaceObjectAtIndex:_a withObject:answer];
           _a++;
       }
       
       if([_category isEqualToString: @"Biology"]) {
           
           [_biologyq objectAtIndex:_a];
           NSString*answer= _askfield.text;
           
           [_biology replaceObjectAtIndex:_a withObject:answer];
           _b++;
       }
       
       if([_category isEqualToString: @"History"]) {
           
           [_historyq objectAtIndex:_a];
           NSString*answer= _askfield.text;
           
           [_history replaceObjectAtIndex:_a withObject:answer];
           _c++;

       }
       
       if([_category isEqualToString: @"Math"]) {
           
           [_mathq objectAtIndex:_d];
           NSString*answer= _askfield.text;
           
           [_math replaceObjectAtIndex:_d withObject:answer];
           _d++;
       }
       
       if([_category isEqualToString: @"Physics"]) {
           
           [_mathq objectAtIndex:_e];
           NSString*answer= _askfield.text;
           
           [_math replaceObjectAtIndex:_e withObject:answer];
           _e++;
       }

    
    
   }
   
    if([_useractiontype isEqualToString:@"Ask a question"]) {
    
        NSLog(@"%@",_category);
        
    if([_category isEqualToString: @"Chemistry"]) {
    
        NSLog(@"%@",_category);
        
        
        NSString *question = _askfield.text;
        [_chemistry addObject:question];
        [_chemistryq addObject:@"temp"];
        [self pushToCloud];
    }
    
    if([_category isEqualToString: @"Biology"]) {
        
        NSString *question = _askfield.text;
        [_biology addObject:question];
        [_biologyq addObject:@"temp"];

    }
    
    if([_category isEqualToString: @"History"]) {
        
        
        NSString *question = _askfield.text;
        [_history addObject:question];
        [_historyq addObject:@"temp"];

    }
    
    if([_category isEqualToString: @"Math"]) {
        
        NSString *question = _askfield.text;
        [_math addObject:question];
        [_math addObject:@"temp"];
    
    }
    
    if([_category isEqualToString: @"Physics"]) {
        
        NSString *question = _askfield.text;
        [_physics addObject:question];
        [_physicsq addObject:@"temp"];

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
            
           
           
         NSString * question = [_chemistry objectAtIndex:_a];
            _textview.text = question;
            
        }
        
        if([_category isEqualToString: @"Biology"]) {
            
            NSString * question = [_biology objectAtIndex:_a];
            _textview.text = question;
            
        }
        
        if([_category isEqualToString: @"History"]) {
            
            NSString * question = [_history objectAtIndex:_a];
            _textview.text = question;
            
        }
        
        if([_category isEqualToString: @"Math"]) {
            
            NSString * question = [_math objectAtIndex:_a];
            _textview.text = question;
            
        }
        
        if([_category isEqualToString: @"Physics"]) {
            
            NSString * question = [_physics objectAtIndex:_a];
            _textview.text = question;
            
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

@end
