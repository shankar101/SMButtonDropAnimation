//
//  ViewController.h
//  SMBtnDropAnimation
//
//  Created by Shankar on 23/04/16.
//  Copyright © 2016 Shankar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    __weak IBOutlet UILabel *lbl4logout;
    __weak IBOutlet UILabel *lbl4processsing;
    __weak IBOutlet UILabel *lbl4sequenceQueue;
    __weak IBOutlet UILabel *lbl4help;
    __weak IBOutlet UILabel *lbl4delivery;
    __weak IBOutlet UIButton *btn4manue;
    __weak IBOutlet UIButton *btn4delevry;
    __weak IBOutlet UIButton *btn4help;
    __weak IBOutlet UIButton *btn4Process;
    __weak IBOutlet UIButton *btn4logOut;
    __weak IBOutlet UIButton *btn4sequenceQueue;
    __weak IBOutlet UIImageView *imgVw4manuePnlBckGrnd;
    int gapingRatio;
    
}
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constant4left_sequenceQueue;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constant4top_sequenceQueue;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constant4sequenceQue;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constant4DeliveryHstry;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constant4help;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constant4procsQue;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constant4LogOut;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constant4ImgvwbtmConstnt;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constant4imgVwTop;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constant4leftside_delivery;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constant4top_delivery;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constant4left_help;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constant4top_help;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constant4left_process;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constant4top_process;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constant4left_logout;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constant4top_logout;
- (IBAction)manueExpandAndCollapseWithAnimatio:(id)sender;
- (IBAction)checkInItems:(id)sender;
- (IBAction)checkOutItems:(id)sender;
- (IBAction)logout:(id)sender;
- (IBAction)processQueue:(id)sender;
- (IBAction)help:(id)sender;
- (IBAction)deliveryHistory:(id)sender;

@end

