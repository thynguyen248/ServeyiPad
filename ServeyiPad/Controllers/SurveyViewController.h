//
//  SurveyViewController.h
//  ServeyiPad
//
//  Created by Le Do Truong An on 1/9/15.
//  Copyright (c) 2015 Nguyen Ngoc Mai Thy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RawTextTableViewCell.h"
#import "RatingTableViewCell.h"
#import "YesNoQuestionTableViewCell.h"
#import "FinalViewController.h"
#import "SelectingBoxTableViewCell.h"
@interface SurveyViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    int NumberMax;

}
@property (strong, nonatomic) IBOutlet UITableView *tblSurvey;
@property (strong, nonatomic) IBOutlet UIButton *btnSubmit;
- (IBAction)buttonClick:(id)sender;
@property (strong,nonatomic) NSMutableArray *listQuestion;
@property (strong,nonatomic) NSMutableArray *listQuestionFull;
@property (strong,nonatomic) NSMutableArray *miniListQuestion;
@property (assign,nonatomic) int NumberMax;
@property (strong, nonatomic) NSMutableArray *listUserInfo;
@end
