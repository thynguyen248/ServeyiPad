//
//  QuestionModel.h
//  ServeyiPad
//
//  Created by Nguyen Ngoc Mai Thy on 1/8/15.
//  Copyright (c) 2015 Nguyen Ngoc Mai Thy. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    YesNo = 1,
    Rating = 2,
    RawText = 3,
    CheckBox = 4
} QuestionType;

@interface QuestionModel : NSObject

@property (assign, nonatomic) QuestionType questionType;
@property (nonatomic,assign) int QuestionId;
@property (strong,nonatomic) NSString *question;
@property (strong, nonatomic) NSString *answer;
@property (strong, nonatomic) NSString *noComment;

@end
