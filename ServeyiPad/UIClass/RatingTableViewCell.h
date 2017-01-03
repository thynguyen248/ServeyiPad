//
//  RatingTableViewCell.h
//  ServeyiPad
//
//  Created by Nguyen Ngoc Mai Thy on 1/8/15.
//  Copyright (c) 2015 Nguyen Ngoc Mai Thy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ASStarRatingView.h"
#import "QuestionModel.h"

@interface RatingTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UITextView *lblQuestion;
@property (strong, nonatomic) IBOutlet ASStarRatingView *ratingView;
@end
