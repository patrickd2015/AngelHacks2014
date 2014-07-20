//
//  QuiViewController.m
//  AngelHackQuiz
//
//  Copyright (c) 2014 Urbanoid. All rights reserved.
//

#import "QuiViewController.h"

@interface QuiViewController (){
    PFObject *questionAnswers;
    NSString *currentObjectID;
}

@end

@implementation QuiViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
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
    _useranswers = [[NSMutableArray alloc]init];
    _chemrepeat = [[NSMutableArray alloc]init];
    _biorepeat = [[NSMutableArray alloc]init];
    _historepeat = [[NSMutableArray alloc]init];
    _mathrepeat = [[NSMutableArray alloc]init];
    _physrepeat = [[NSMutableArray alloc]init];
    
    
    
    [self retrivePreviousID];
    
    _a = 0;
    _b =0 ;
    _c = 0;;
    _d = 0;
    _e = 0;
    _f = 0 ;
    _g = 0 ;
    _h = 0;
    _i =0 ;
    _j = 0;
    
    _aa = 0;
    _bb = 0;
    _cc = 0;
    _dd = 0;
    _ee = 0;
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */
-(IBAction)showans:(id)sender {
    
    _answerlabel.hidden = NO;
    
}

-(BOOL)compareValues:(NSMutableArray *)sampleArray andValue:(NSString *)secondValue{
    for(int i = 0; i < [sampleArray count]; i++)
    {
        if([[sampleArray objectAtIndex:i] isEqualToString:secondValue])
        {
            return true;
        }
    }
    return false;
}

-(IBAction)nextans:(id)sender {
    if(( _aa == 5) == false) {
        if(( _bb == 5)== false) {
            if(( _cc == 5)== false) {
                if(( _dd == 5)==false ) {
                    if(( _ee == 5) == false) {
                        if([_category isEqualToString: @"Chemistry"]) {
                            
                        start1:
                            _a = [_chemistry count];
                            _b = arc4random() % _a;
                            
                            NSString * question = [_chemistry objectAtIndex: _b];
                            
                            if([question isEqualToString:@""]){
                                goto start1;
                            }
                            if([self compareValues:_chemrepeat andValue:question]){
                                for(NSString* sample in _chemrepeat)
                                {
                                    NSLog(@"%@", sample);
                                }
                                NSLog(@" End ");
                                goto start1;
                            }
                            
                            _questionlabel.text = question;
                            _answerlabel.text =   [_chemistryq objectAtIndex: _b];
                            [_chemrepeat addObject:question];
                            _aa++;
                            for(NSString* sample in _chemrepeat)
                            {
                                NSLog(@"%@", sample);
                            }
                            NSLog(@" End ");
                        }
                        
                        
                        if([_category isEqualToString: @"Biology"]) {
                            
                        start2:
                            _c = [_biology count];
                            _d = arc4random() % _c;
                            
                            NSString * question = [_biology objectAtIndex: _d];
                            
                            if([question isEqualToString:@""]){
                                goto start2;
                            }
                            if([self compareValues:_biorepeat andValue:question]){
                                for(NSString* sample in _biorepeat)
                                {
                                    NSLog(@"%@", sample);
                                }
                                NSLog(@" End ");
                                goto start2;
                            }
                            
                            _questionlabel.text = question;
                            _answerlabel.text =   [_biologyq objectAtIndex: _d];
                            [_biorepeat addObject:question];
                            _bb++;
                            for(NSString* sample in _biorepeat)
                            {
                                NSLog(@"%@", sample);
                            }
                            NSLog(@" End ");
                            
                        }
                        
                        
                        if([_category isEqualToString: @"History"]) {
                            
                        start3:
                            _e = [_historyq count];
                            _f = arc4random() % _e;
                            
                            NSString * question = [_history objectAtIndex: _f];
                            
                            if([question isEqualToString:@""]){
                                goto start3;
                            }
                            if([self compareValues:_historepeat andValue:question]){
                                for(NSString* sample in _historepeat)
                                {
                                    NSLog(@"%@", sample);
                                }
                                NSLog(@" End ");
                                goto start3;
                            }
                            
                            _questionlabel.text = question;
                            _answerlabel.text =   [_historyq objectAtIndex: _f];
                            [_historepeat addObject:question];
                            _cc++;
                            for(NSString* sample in _historepeat)
                            {
                                NSLog(@"%@", sample);
                            }
                            NSLog(@" End ");
                            
                        }
                        
                        if([_category isEqualToString: @"Math"]) {
                        start4:
                            _g = [_math count];
                            _h = arc4random() % _g;
                            
                            NSString * question = [_math objectAtIndex: _h];
                            
                            if([question isEqualToString:@""]){
                                goto start4;
                            }
                            if([self compareValues:_mathrepeat andValue:question]){
                                for(NSString* sample in _mathrepeat)
                                {
                                    NSLog(@"%@", sample);
                                }
                                NSLog(@" End ");
                                goto start4;
                            }
                            
                            _questionlabel.text = question;
                            _answerlabel.text =   [_mathq objectAtIndex: _h];
                            [_mathrepeat addObject:question];
                            _dd++;
                            for(NSString* sample in _mathrepeat)
                            {
                                NSLog(@"%@", sample);
                            }
                            NSLog(@" End ");
                            
                        }
                        
                        
                        if([_category isEqualToString: @"Physics"]) {
                            
                        start5:
                            _i = [_chemistry count];
                            _j = arc4random() % _i;
                            
                            NSString * question = [_physics objectAtIndex: _j];
                            
                            if([question isEqualToString:@""]){
                                goto start5;
                            }
                            if([self compareValues:_physrepeat andValue:question]){
                                for(NSString* sample in _physrepeat)
                                {
                                    NSLog(@"%@", sample);
                                }
                                NSLog(@" End ");
                                goto start5;
                            }
                            
                            _questionlabel.text = question;
                            _answerlabel.text =   [_physicsq objectAtIndex: _j];
                            [_physrepeat addObject:question];
                            _aa++;
                            for(NSString* sample in _physrepeat)
                            {
                                NSLog(@"%@", sample);
                            }
                            NSLog(@" End ");
                            
                        }
                        
                    } else {
                        
                        
                        _label.hidden = NO;
                        _label.text = @"finished";
                        
                    }
                    
                    
                    
                    
                } else {
                    
                    _label.hidden = NO;
                    _label.text = @"finished";
                    
                    
                }
                
                
                
            } else {
                
                _label.hidden = NO;
                _label.text = @"finished";
                
                
            }
            
            
        } else {
            
            _label.hidden = NO;
            _label.text = @"finished";
            
            
        }
        
        
    } else {
        
        _label.hidden = NO;
        _label.text = @"finished";
        
        
    }
    
    
}

-(IBAction)getcategory:(id)sender {
    
    UIButton * title = (UIButton* )sender;
    _category = title.titleLabel.text;
    _historyb.hidden = YES;
    _chemistryb.hidden = YES;
    _physicsb.hidden = YES;
    _biologyb.hidden = YES;
    _mathb.hidden = YES;
    _questionlabel.hidden = NO;
    _field.hidden = NO;
    _next.hidden = NO;
    _show.hidden = NO;
    
    if([_category isEqualToString: @"Chemistry"]) {
        
        _chemrepeat = nil;
        NSLog(@"reset");
        
        while(YES) {
            _a = [_chemistryq count];
            _b = arc4random() %_a;
            
            NSString * string = [_chemistryq objectAtIndex:_b];
            if([string isEqualToString: @""] == false) {
                
                break;
            }
        }
        
        
        
        NSString * question = [_chemistry objectAtIndex: _b];
        _questionlabel.text = question;
        _answerlabel.text =   [_chemistryq objectAtIndex: _b];
        [_chemrepeat addObject:question];
        _aa++;
    }
    
    if([_category isEqualToString: @"Biology"]) {
        
        _biorepeat = nil;
        NSLog(@"reset");
        
        while(YES) {
            _c = [_biologyq count];
            _d = arc4random() %_c;
            
            NSString * string = [_biologyq objectAtIndex:_d];
            if([string isEqualToString: @""] == false) {
                
                break;
            }
        }
        
        
        
        NSString * question = [_biology objectAtIndex: _d];
        _questionlabel.text = question;
        _answerlabel.text =   [_biologyq objectAtIndex: _d];
        _bb ++;
    }
    
    if([_category isEqualToString: @"History"]) {
        
        _historepeat = nil;
        NSLog(@"reset");
        
        while(YES) {
            _e = [_historyq count];
            _f = arc4random() %_e;
            
            NSString * string = [_historyq objectAtIndex:_f];
            if([string isEqualToString: @""] == false) {
                
                break;
            }
        }
        
        
        
        NSString * question = [_history objectAtIndex:_f];
        _questionlabel.text = question;
        _answerlabel.text =   [_historyq objectAtIndex: _f];
        _cc ++;
    }
    
    if([_category isEqualToString: @"Math"]) {
        
        _mathrepeat = nil;
        NSLog(@"reset");
        
        while(YES) {
            _g = [_mathq count];
            _h = arc4random() %_g;
            
            NSString * string = [_mathq objectAtIndex:_h];
            if([string isEqualToString: @""] == false) {
                
                break;
            }
        }
        
        NSString * question = [_math objectAtIndex:_h];
        _questionlabel.text = question;
        _answerlabel.text =   [_mathq objectAtIndex: _h];
        _dd++;
    }
    
    if([_category isEqualToString: @"Physics"]) {
        
        _physrepeat = nil;
        NSLog(@"reset");
        
        while(YES) {
            _i = [_physicsq count];
            _j = arc4random() %_i;
            
            NSString * string = [_physicsq objectAtIndex:_j];
            if([string isEqualToString: @""] == false) {
                
                break;
            }
        }
        
        
        NSString * question = [_physics objectAtIndex:_j];
        _questionlabel.text = question;
        _answerlabel.text =   [_physicsq objectAtIndex: _j];
        _ee++;
    }
    
    
    
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
-(IBAction)kill:(id)sender {
    
    [sender resignFirstResponder];
}


@end
