//
//  ViewController.m
//  SMBtnDropAnimation
//
//  Created by Shankar on 23/04/16.
//  Copyright © 2016 Shankar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self calculateratio];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark------------------------
#pragma mark Menue Colapse and Expand

- (IBAction)manueExpandAndCollapseWithAnimatio:(id)sender {
    UIButton *btn=(UIButton *)sender;
    btn.userInteractionEnabled=NO;
    if(btn.tag==99)
    {
        [self expandMenue:btn];
        
    }else
    {
        [self colapseMenue:btn];
        
        
    }
}

- (IBAction)checkInItems:(id)sender {
}

- (IBAction)checkOutItems:(id)sender {
   
}

- (IBAction)logout:(id)sender {
}

- (IBAction)processQueue:(id)sender {
}

- (IBAction)help:(id)sender {
}

- (IBAction)deliveryHistory:(id)sender {
    
    
}
-(void)expandMenue:(UIButton *)btn{
    
    imgVw4manuePnlBckGrnd.hidden=NO;
    lbl4delivery.alpha=0;
    lbl4help.alpha=0;
    lbl4processsing.alpha=0;
    lbl4logout.alpha=0;
    [UIView animateWithDuration:.20 animations:^{
        
        btn4delevry.alpha=1;
        _constant4DeliveryHstry.constant=gapingRatio/8;
        _constant4help.constant=gapingRatio/8;
        _constant4procsQue.constant=gapingRatio/8;
        _constant4sequenceQue.constant=gapingRatio/8;
        _constant4LogOut.constant=gapingRatio/8;
        _constant4imgVwTop.constant=gapingRatio/8;
        
        _constant4top_delivery.constant=gapingRatio/8+12;
        _constant4top_help.constant=gapingRatio/8+12;
        _constant4top_process.constant=gapingRatio/8+12;
        _constant4top_sequenceQueue.constant=gapingRatio/8+12;
        _constant4top_logout.constant=gapingRatio/8+12;
        
        [self.view updateConstraints];
        [self.view layoutIfNeeded];
    }completion:^(BOOL finished) {
        [self BounceInButton:btn4delevry];
        [self deliveryOptionTextOpen];
        
        [UIView animateWithDuration:.20 animations:^{
            
            btn4help.alpha=1;
            _constant4help.constant=  _constant4top_logout.constant+gapingRatio/8;
            _constant4procsQue.constant=_constant4top_logout.constant+gapingRatio/8;
            _constant4sequenceQue.constant=_constant4top_logout.constant+gapingRatio/8;
            _constant4LogOut.constant=_constant4top_logout.constant+gapingRatio/8;
            _constant4imgVwTop.constant=_constant4top_logout.constant+gapingRatio/8;
            
            _constant4top_help.constant=_constant4top_logout.constant+gapingRatio/8+12;
            _constant4top_process.constant=_constant4top_logout.constant+gapingRatio/8+12;
            _constant4top_sequenceQueue.constant=_constant4top_logout.constant+gapingRatio/8+12;
            _constant4top_logout.constant=_constant4top_logout.constant+gapingRatio/8+12;
            [self.view updateConstraints];
            [self.view layoutIfNeeded];
        }completion:^(BOOL finished) {
            [self BounceInButton:btn4help];
            [self HelopOptionTextOpen];
            [UIView animateWithDuration:.20 animations:^{
                
                btn4Process.alpha=1;
                _constant4procsQue.constant=_constant4top_logout.constant+gapingRatio/8;
                _constant4sequenceQue.constant=_constant4top_logout.constant+gapingRatio/8;
                _constant4LogOut.constant=_constant4top_logout.constant+gapingRatio/8;
                _constant4imgVwTop.constant=_constant4top_logout.constant+gapingRatio/8;
                
                _constant4top_process.constant=_constant4top_logout.constant+gapingRatio/8+12;
                _constant4top_sequenceQueue.constant=_constant4top_logout.constant+gapingRatio/8+12;
                _constant4top_logout.constant=_constant4top_logout.constant+gapingRatio/8+12;
                [self.view updateConstraints];
                [self.view layoutIfNeeded];
            }completion:^(BOOL finished) {
                [self BounceInButton:btn4Process];
                [self ProcessOptionTextopen];
                [UIView animateWithDuration:.20 animations:^{
                    btn4sequenceQueue.alpha=1;
                    _constant4sequenceQue.constant=_constant4top_sequenceQueue.constant+gapingRatio/8;
                    _constant4LogOut.constant=_constant4top_logout.constant+gapingRatio/8;
                    _constant4imgVwTop.constant=_constant4top_sequenceQueue.constant+gapingRatio/8;
                    
                    _constant4top_sequenceQueue.constant=_constant4top_sequenceQueue.constant+gapingRatio/8+12;
                    _constant4top_logout.constant=_constant4top_logout.constant+gapingRatio/8+12;
                    [self.view updateConstraints];
                    [self.view layoutIfNeeded];
                    
                }completion:^(BOOL finished) {
                    [self BounceInButton:btn4sequenceQueue];
                    [self sequenceQueueOpen];
                    [UIView animateWithDuration:.20 animations:^{
                        
                        btn4logOut.alpha=1;
                        _constant4LogOut.constant=_constant4top_logout.constant+gapingRatio/8;
                        _constant4imgVwTop.constant=_constant4top_logout.constant+gapingRatio/8;
                        
                        _constant4top_logout.constant=_constant4top_logout.constant+gapingRatio/8+12;
                        [self.view updateConstraints];
                        [self.view layoutIfNeeded];
                    }completion:^(BOOL finished) {
                        [self BounceInButton:btn4logOut];
                        [self logoutOptiontextopen];
                        [UIView animateWithDuration:.20 animations:^{
                            _constant4imgVwTop.constant=self.view.frame.size.height-24;
                            [self.view updateConstraints]   ;
                            [self.view layoutIfNeeded];
                        }completion:^(BOOL finished) {
                            btn.userInteractionEnabled=YES;
                        }];
                        
                    }];
                    
                }];
            }];
        }];
    }];
    btn.tag=999;
}
-(void)colapseMenue:(UIButton *)btn{
    btn.tag=99;
    [UIView animateWithDuration:.20 animations:^{
        
        _constant4imgVwTop.constant=_constant4imgVwTop.constant-((gapingRatio*3)/8) ;
        
        
        _constant4left_logout.constant=12;
        _constant4top_logout.constant=_constant4top_logout.constant;
        lbl4logout.alpha=0;
        [self.view updateConstraints]   ;
        [self.view layoutIfNeeded];
        
        
    }completion:^(BOOL finished) {
        
        [UIView animateWithDuration:.20 animations:^{
            
            btn4logOut.alpha=0;
            _constant4LogOut.constant=_constant4top_sequenceQueue.constant;
            _constant4imgVwTop.constant=_constant4top_sequenceQueue.constant;
            
            _constant4top_logout.constant=_constant4top_sequenceQueue.constant;
            _constant4top_sequenceQueue.constant=_constant4top_sequenceQueue.constant;
            _constant4left_sequenceQueue.constant=12;
            lbl4sequenceQueue.alpha=0;
            
            [self.view updateConstraints];
            [self.view layoutIfNeeded];
            
        }completion:^(BOOL finished) {
            [UIView animateWithDuration:.20 animations:^{
                _constant4sequenceQue.constant=_constant4top_process.constant;
                _constant4LogOut.constant=_constant4top_process.constant;
                _constant4imgVwTop.constant=_constant4top_process.constant;
                
                btn4sequenceQueue.alpha=0;
                _constant4top_logout.constant=_constant4top_process.constant;
                _constant4top_sequenceQueue.constant=_constant4top_process.constant;
                _constant4left_process.constant=12;
                _constant4top_process.constant=_constant4top_process.constant;
                lbl4processsing.alpha=0;
                [self.view updateConstraints];
                [self.view layoutIfNeeded];
            }completion:^(BOOL finished) {
                [UIView animateWithDuration:.20 animations:^{
                    _constant4sequenceQue.constant=_constant4top_help.constant;
                    _constant4procsQue.constant=_constant4top_help.constant;
                    _constant4LogOut.constant=_constant4top_help.constant;
                    _constant4imgVwTop.constant=_constant4top_help.constant;
                    
                    btn4Process.alpha=0;
                    _constant4top_sequenceQueue.constant=_constant4top_help.constant;
                    _constant4top_logout.constant=_constant4top_help.constant;
                    _constant4top_process.constant=_constant4top_help.constant;
                    _constant4left_help.constant=12;
                    _constant4top_help.constant=_constant4top_help.constant;
                    lbl4help.alpha=0;
                    [self.view updateConstraints];
                    [self.view layoutIfNeeded];
                }completion:^(BOOL finished) {
                    [UIView animateWithDuration:.20 animations:^{
                        _constant4sequenceQue.constant=_constant4top_delivery.constant;
                        _constant4help.constant=_constant4top_delivery.constant;
                        _constant4procsQue.constant=_constant4top_delivery.constant;
                        _constant4LogOut.constant=_constant4top_delivery.constant;
                        _constant4imgVwTop.constant=_constant4top_delivery.constant;
                        
                        btn4help.alpha=0;
                        _constant4top_sequenceQueue.constant=_constant4top_delivery.constant;
                        _constant4top_logout.constant=_constant4top_delivery.constant;
                        _constant4top_process.constant=_constant4top_delivery.constant;
                        _constant4top_help.constant=_constant4top_delivery.constant;
                        _constant4top_delivery.constant=_constant4top_delivery.constant;
                        _constant4leftside_delivery.constant=12;
                        lbl4delivery.alpha=0;
                        
                        [self.view updateConstraints];
                        [self.view layoutIfNeeded];
                    }completion:^(BOOL finished) {
                        [UIView animateWithDuration:.20 animations:^{
                            
                            btn4delevry.alpha=0;
                            _constant4sequenceQue.constant=8;
                            _constant4DeliveryHstry.constant=8;
                            _constant4help.constant=8;
                            _constant4procsQue.constant=8;
                            _constant4LogOut.constant=8;
                            _constant4imgVwTop.constant=16;
                            
                            _constant4top_sequenceQueue.constant=20;
                            _constant4top_logout.constant=20;
                            _constant4top_process.constant=20;
                            _constant4top_help.constant=20;
                            _constant4top_delivery.constant=20;
                            [self.view updateConstraints];
                            [self.view layoutIfNeeded];
                        }completion:^(BOOL finished) {
                            btn.userInteractionEnabled=YES;
                            imgVw4manuePnlBckGrnd.hidden=YES;
                        }];
                        
                    }];
                }];
                
                
            }];
        }];
    }];
}

-(void)deliveryOptionTextOpen{
    [UIView animateWithDuration:.05 animations:^{
        lbl4delivery.alpha=1;
        _constant4leftside_delivery.constant=85;
        [self.view updateConstraints];
        [self.view layoutIfNeeded];
    }completion:^(BOOL finished) {
    }];
}
-(void)HelopOptionTextOpen{
    [UIView animateWithDuration:.05 animations:^{
        lbl4help.alpha=1;
        _constant4left_help.constant=85;
        [self.view updateConstraints];
        [self.view layoutIfNeeded];
    }completion:^(BOOL finished) {
    }];
}
-(void)ProcessOptionTextopen{
    [UIView animateWithDuration:.05 animations:^{
        lbl4processsing.alpha=1;
        _constant4left_process.constant=85;
        [self.view updateConstraints];
        [self.view layoutIfNeeded];
    }completion:^(BOOL finished) {
    }];
}
-(void)logoutOptiontextopen{
    [UIView animateWithDuration:.05 animations:^{
        lbl4logout.alpha=1;
        _constant4left_logout.constant=85;
        
        [self.view updateConstraints];
        [self.view layoutIfNeeded];
    }completion:^(BOOL finished) {
    }];
}
-(void)sequenceQueueOpen{
    [UIView animateWithDuration:.05 animations:^{
        lbl4sequenceQueue.alpha=1;
        _constant4left_sequenceQueue.constant=85;
        
        [self.view updateConstraints];
        [self.view layoutIfNeeded];
    }completion:^(BOOL finished) {
    }];
}
#pragma mark--------------
#pragma mark MenuButtonBounce

-(void)BounceInButton:(UIButton *)btn{
    [UIView animateWithDuration:0.3/1.5 animations:^{
        btn.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.1, 1.1);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.3/2 animations:^{
            btn.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.9, 0.9);
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.3/2 animations:^{
                btn.transform = CGAffineTransformIdentity;
            }];
        }];
    }];
}
#pragma mark------------------
#pragma mark calculate gapimg ratio
-(void)calculateratio{
    gapingRatio=[self.view bounds].size.height;
}


@end
