//
//  FirstViewController.m
//  ServeyiPad
//
//  Created by Nguyen Ngoc Mai Thy on 1/8/15.
//  Copyright (c) 2015 Nguyen Ngoc Mai Thy. All rights reserved.
//

#import "FirstViewController.h"
#import "SurveyViewController.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if ([self respondsToSelector:@selector(setNeedsStatusBarAppearanceUpdate)]) {
        // iOS 7
        [self prefersStatusBarHidden];
        [self performSelector:@selector(setNeedsStatusBarAppearanceUpdate)];
    } else {
        // iOS 6
        [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationSlide];
    }
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Add this Method
- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (IBAction)btnNextClick:(id)sender
{
    _financialConsultant = _txtFinancialConsultant.text;
    _financialServiceRendered = _txtFinancialServiceRendered.text;
    _customerName = _txtCustomerName.text;
    _companyName = _txtCompanyName.text;
    _dateApplication = _txtDateApplication.text;
    _dateApproval = _txtDateApproval.text;
    _submittedBank = _txtSubmittedBank.text;
    _approvedBank = _txtApprovedBank.text;
    
    _listUserInfo = [NSMutableArray arrayWithObjects:_financialConsultant, _financialServiceRendered, _customerName, _companyName, _dateApplication, _dateApproval, _approvedBank, _submittedBank, nil];
    
    SurveyViewController *page = [[SurveyViewController alloc]initWithNibName:@"SurveyViewController" bundle:nil];
    page.listUserInfo = _listUserInfo;
    [self presentViewController:page animated:YES completion: ^{
        NSLog(@"Successful");
    }];
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

@end
