//
//  YesNoQuestionTableViewCell.m
//  ServeyiPad
//
//  Created by Nguyen Ngoc Mai Thy on 1/8/15.
//  Copyright (c) 2015 Nguyen Ngoc Mai Thy. All rights reserved.
//

#import "YesNoQuestionTableViewCell.h"

@implementation YesNoQuestionTableViewCell
@synthesize segmentContoll;
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}
- (void)awakeFromNib {
    // Initialization code
    [_tfComment setEnabled:NO];
    segmentContoll.selectedSegmentIndex=0;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}




- (IBAction)segmentYesNo:(id)sender {
    if(segmentContoll.selectedSegmentIndex ==0)
    {
         [_tfComment setEnabled:NO];
    }else{
        
       
        [_tfComment setEnabled:YES];
    }
}
@end
