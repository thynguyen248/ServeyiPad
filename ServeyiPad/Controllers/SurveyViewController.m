//
//  SurveyViewController.m
//  ServeyiPad
//
//  Created by Le Do Truong An on 1/9/15.
//  Copyright (c) 2015 Nguyen Ngoc Mai Thy. All rights reserved.
//

#import "SurveyViewController.h"
#import "QuestionModel.h"

@interface SurveyViewController ()

@end

@implementation SurveyViewController
@synthesize btnSubmit,tblSurvey,listQuestion,miniListQuestion,NumberMax;
- (void)viewDidLoad {
    [super viewDidLoad];
    [tblSurvey setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    tblSurvey.allowsSelection = NO;
    // Do any additional setup after loading the view from its nib.
    listQuestion = [NSMutableArray array];
    miniListQuestion = [NSMutableArray array];
    
    [self addQuestion];
    
    QuestionModel *question = [[QuestionModel alloc] init];
    question.QuestionId=1;
    question.question = @"Did the Financial Consultant explain the services clearly?";
    question.questionType = YesNo;
    question.answer =@"YES";
    [listQuestion addObject:question];
    [miniListQuestion addObject:question];
    QuestionModel *question1 = [[QuestionModel alloc] init];
    question1.question = @"Did you manage to get the Financial Services you expected?";
    question1.questionType = YesNo;
    question1.answer =@"YES";
    [listQuestion addObject:question1];
    [miniListQuestion addObject:question1];
    QuestionModel *question2 = [[QuestionModel alloc] init];
    question2.question = @"Would you use our services again?";
    question2.questionType = YesNo;
    question2.answer =@"YES";
    [listQuestion addObject:question2];
    [miniListQuestion addObject:question2];
    
    QuestionModel *question3 = [[QuestionModel alloc] init];
    question3.question = @"Would you recommend our services to friends and family?";
    question3.questionType = YesNo;
    question3.answer =@"YES";
    [listQuestion addObject:question3];
    
    QuestionModel *question4 = [[QuestionModel alloc] init];
    question4.question = @"Please rate the processing time from the bank from 1to 5 (1 being slowest and 5 being fast)";
    question4.questionType = Rating;
    question4.answer =@"4";
    [listQuestion addObject:question4];
    
    QuestionModel *question5 = [[QuestionModel alloc] init];
    question5.question = @"How would you rate the consultant’s services from the bank from 1to 5 (1 being not good and 5 being Excellent)";
    question5.questionType = Rating;
    question5.answer =@"4";
    [listQuestion addObject:question5];
    
    QuestionModel *question6 = [[QuestionModel alloc] init];
    question6.question = @"Do you have branches overseas?";
    question6.questionType = YesNo;
    question6.answer =@"YES";
    [listQuestion addObject:question6];
    
    QuestionModel *question7 = [[QuestionModel alloc] init];
    question7.question = @"How do you find the bank interest rates?";
    question7.questionType = RawText;
    question7.answer =@"N/A";
    [listQuestion addObject:question7];
    
    QuestionModel *question8 = [[QuestionModel alloc] init];
    question8.question = @"Which bank do you have accounts with?";
    question8.questionType = RawText;
    question8.answer =@"N/A";
    [listQuestion addObject:question8];
    
    QuestionModel *question9 = [[QuestionModel alloc] init];
    question9.question = @"How do you think we can serve you better? ";
    question9.questionType = RawText;
    question9.answer =@"N/A";
    [listQuestion addObject:question9];
    
    QuestionModel *question10 = [[QuestionModel alloc] init];
    question10.question = @"I agree to receive related promotions from Zenith Business Solutions Pte Ltd offered by the bank.";
    question10.questionType = CheckBox;
    question10.answer =@"1";
    [listQuestion addObject:question10];

    NumberMax = miniListQuestion.count;
    [tblSurvey reloadData];
    
}

- (void) addQuestion{
    QuestionModel *question = [[QuestionModel alloc] init];
    question.QuestionId=1;
    question.question = @"Did the Financial Consultant explain the services clearly?";
    question.questionType = YesNo;
    question.answer =@"YES";
    [_listQuestionFull addObject:question];
    [miniListQuestion addObject:question];
    
    QuestionModel *question1 = [[QuestionModel alloc] init];
    question.QuestionId=2;
    question1.question = @"Did you manage to get the Financial Services you expected?";
    question1.questionType = YesNo;
    question1.answer =@"YES";
    [_listQuestionFull addObject:question1];
    [miniListQuestion addObject:question1];
    
    QuestionModel *question2 = [[QuestionModel alloc] init];
    question.QuestionId=3;
    question2.question = @"Would you use our services again?";
    question2.questionType = YesNo;
    question2.answer =@"YES";
    [_listQuestionFull addObject:question2];
    [miniListQuestion addObject:question2];
    
    QuestionModel *question3 = [[QuestionModel alloc] init];
    question.QuestionId=4;
    question3.question = @"Would you recommend our services to friends and family?";
    question3.questionType = YesNo;
    question3.answer =@"YES";
    [_listQuestionFull addObject:question3];
    
    QuestionModel *question4 = [[QuestionModel alloc] init];
    question.QuestionId=5;
    question4.question = @"Please rate the processing time from the bank from 1to 5 (1 being slowest and 5 being fast)";
    question4.questionType = Rating;
    question4.answer =@"4";
    [_listQuestionFull addObject:question4];
    
    QuestionModel *question5 = [[QuestionModel alloc] init];
    question.QuestionId=6;
    question5.question = @"How would you rate the consultant’s services from the bank from 1to 5 (1 being not good and 5 being Excellent)";
    question5.questionType = Rating;
    question5.answer =@"4";
    [_listQuestionFull addObject:question5];
    
    QuestionModel *question6 = [[QuestionModel alloc] init];
    question.QuestionId=7;
    question6.question = @"Do you have branches overseas?";
    question6.questionType = YesNo;
    question6.answer =@"YES";
    [_listQuestionFull addObject:question6];
    
    QuestionModel *question7 = [[QuestionModel alloc] init];
    question.QuestionId=8;
    question7.question = @"How do you find the bank interest rates?";
    question7.questionType = RawText;
    question7.answer =@"N/A";
    [_listQuestionFull addObject:question7];
    
    QuestionModel *question8 = [[QuestionModel alloc] init];
    question.QuestionId=9;
    question8.question = @"Which bank do you have accounts with?";
    question8.questionType = RawText;
    question8.answer =@"N/A";
    [_listQuestionFull addObject:question8];
    
    QuestionModel *question9 = [[QuestionModel alloc] init];
    question.QuestionId=10;
    question9.question = @"How do you think we can serve you better? ";
    question9.questionType = RawText;
    question9.answer =@"N/A";
    [_listQuestionFull addObject:question9];
    
    QuestionModel *question10 = [[QuestionModel alloc] init];
    question.QuestionId=11;
    question10.question = @"I agree to receive related promotions from Zenith Business Solutions Pte Ltd offered by the bank.";
    question10.questionType = CheckBox;
    question10.answer =@"1";
    [_listQuestionFull addObject:question10];
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
-(UITableViewCell* )tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger row = indexPath.row;
    QuestionModel * data = [miniListQuestion objectAtIndex:row];
    QuestionType type = data.questionType;
    static NSString *CellIdentifier = @"Cell";
   
    switch (type) {
        case RawText:
        {
       
            RawTextTableViewCell *cell = (RawTextTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
            if (cell == nil) {
                cell = [[[NSBundle mainBundle] loadNibNamed:@"RawTextTableViewCell" owner:self options:nil] objectAtIndex:0];
                cell.accessoryType = UITableViewCellAccessoryNone;
            }
            cell.lblQuestion.text = data.question;
            return cell;
        }
            break;
        case Rating:
        {
            
            RatingTableViewCell *cell = (RatingTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
            if (cell == nil) {
                cell = [[[NSBundle mainBundle] loadNibNamed:@"RatingTableViewCell" owner:self options:nil] objectAtIndex:0];
                cell.accessoryType = UITableViewCellAccessoryNone;
            }
            cell.lblQuestion.text = data.question;
            return cell;
        }
            break;
        case YesNo:
        {
            
            YesNoQuestionTableViewCell *cell = (YesNoQuestionTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
            if (cell == nil) {
                cell = [[[NSBundle mainBundle] loadNibNamed:@"YesNoQuestionTableViewCell" owner:self options:nil] objectAtIndex:0];
                cell.accessoryType = UITableViewCellAccessoryNone;
            }
            cell.tvQuestion.text = data.question;
            return cell;
        }
            break;
        case CheckBox:
        {
            
           SelectingBoxTableViewCell *cell = (SelectingBoxTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
            if (cell == nil) {
                cell = [[[NSBundle mainBundle] loadNibNamed:@"SelectingBoxTableViewCell" owner:self options:nil] objectAtIndex:0];
                cell.accessoryType = UITableViewCellAccessoryNone;
            }
            cell.tvQuestion.text = data.question;
            return cell;
        }
            break;
    }
    return nil;
}
#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return miniListQuestion.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    QuestionModel * data = [miniListQuestion objectAtIndex:indexPath.row];
    QuestionType type = data.questionType;
    
    switch (type) {
        case RawText:
        {
            
            return 100;
        }
        case Rating:
        {
            
           return   100;
        }
        case YesNo:
        {
            
             return 143;
        }
        case CheckBox:
        {
            
            return  100;
        }
    }

}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)buttonClick:(id)sender {
    if(NumberMax>= listQuestion.count){
    UIViewController *page = [[FinalViewController alloc]initWithNibName:@"FinalViewController" bundle:nil];
    [self presentViewController:page animated:YES completion: ^{
        NSLog(@"Successful");
    }];
    }
    else{
        [miniListQuestion removeAllObjects];
        for (int i = NumberMax; i< (NumberMax+3)&&i<[listQuestion count]; i++) {
            [miniListQuestion addObject:[listQuestion objectAtIndex:i]];
        }
        NumberMax+=3;
        [tblSurvey reloadData];
    }
}
@end
