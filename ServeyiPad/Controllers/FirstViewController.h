//
//  FirstViewController.h
//  ServeyiPad
//
//  Created by Nguyen Ngoc Mai Thy on 1/8/15.
//  Copyright (c) 2015 Nguyen Ngoc Mai Thy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController <UITextFieldDelegate>

@property (assign, nonatomic) NSInteger index;

@property (strong, nonatomic) IBOutlet UITextField *txtFinancialConsultant;
@property (strong, nonatomic) IBOutlet UITextField *txtFinancialServiceRendered;
@property (strong, nonatomic) IBOutlet UITextField *txtCustomerName;
@property (strong, nonatomic) IBOutlet UITextField *txtCompanyName;
@property (strong, nonatomic) IBOutlet UITextField *txtDateApplication;
@property (strong, nonatomic) IBOutlet UITextField *txtDateApproval;
@property (strong, nonatomic) IBOutlet UITextField *txtSubmittedBank;
@property (strong, nonatomic) IBOutlet UITextField *txtApprovedBank;

@property (strong, nonatomic) NSString *financialConsultant;
@property (strong, nonatomic) NSString *financialServiceRendered;
@property (strong, nonatomic) NSString *customerName;
@property (strong, nonatomic) NSString *companyName;
@property (strong, nonatomic) NSString *dateApplication;
@property (strong, nonatomic) NSString *dateApproval;
@property (strong, nonatomic) NSString *submittedBank;
@property (strong, nonatomic) NSString *approvedBank;

@property (strong, nonatomic) NSMutableArray *listUserInfo;
- (IBAction)btnNextClick:(id)sender;

@end
