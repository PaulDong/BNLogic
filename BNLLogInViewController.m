//
//  BNLLogInViewController.m
//  BNLogic Live
//
//  Created by Chuan Xiang dong on 2014-04-08.
//  Copyright (c) 2014 Chuan Xiang dong. All rights reserved.
//

#import "BNLLogInViewController.h"

@interface BNLLogInViewController ()

@property (weak, nonatomic) IBOutlet UITextField *UserName;
@property (weak, nonatomic) IBOutlet UITextField *Password;
@property (weak, nonatomic) IBOutlet UIButton *login;
@property (weak, nonatomic) IBOutlet UILabel *ultips;

@end

@implementation BNLLogInViewController
- (IBAction)SystemLogin:(id)sender {
    if([_UserName.text length] != 0 && [_Password.text length] != 0) {
//        NSURL *url = [NSURL URLWithString:@"http://208.72.178.132:8000/api/login/"];
//        ASIFormDataRequest *request = [ASIFormDataRequest requestWithURL:url];
//        [request setPostValue:_UserName forKey:@"userName"];
//        [request setPostValue:_Password forKey:@"password"];
//        [request setDelegate:self];
//        [request startAsynchronous];
        NSLog(@"%@", _UserName.text);
    } else {
        NSLog(@"There is not input");
    }
    if ([_UserName isFirstResponder]) {
        [self.UserName resignFirstResponder];
    }
    if ([_Password isFirstResponder]) {
        [self.Password resignFirstResponder];
    }
}

- (IBAction)filledusername:(id)sender {
    [self.UserName resignFirstResponder];
}

- (void) updateUI{

}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {

    UITouch *touch = [[event allTouches] anyObject];
    if ([_UserName isFirstResponder] && [touch view] != _UserName) {
        [_UserName resignFirstResponder];
    }

    if ([_Password isFirstResponder] && [touch view] != _Password) {
        [_Password resignFirstResponder];
    }
    [super touchesBegan:touches withEvent:event];
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[self view] endEditing: YES];
    self.ultips.text = @"Please type your username and password below";
    self.ultips.textColor = [UIColor blackColor];
//    self.hintMessage.hidden = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
