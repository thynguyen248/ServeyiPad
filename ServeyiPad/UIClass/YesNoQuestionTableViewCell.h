//
//  YesNoQuestionTableViewCell.h
//  ServeyiPad
//
//  Created by Nguyen Ngoc Mai Thy on 1/8/15.
//  Copyright (c) 2015 Nguyen Ngoc Mai Thy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuestionModel.h"

@interface YesNoQuestionTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UITextView *tvQuestion;
@property (strong, nonatomic) IBOutlet UITextField *tfComment;

- (IBAction)segmentYesNo:(id)sender;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentContoll;


@end