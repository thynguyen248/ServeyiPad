//
//  SelectingBoxTableViewCell.h
//  SurveyApp
//
//  Created by Le Do Truong An on 1/9/15.
//  Copyright (c) 2015 Nguyen Ngoc Mai Thy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SelectingBoxTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UISwitch *swBox;
@property (strong, nonatomic) IBOutlet UITextView *tvQuestion;

@end
