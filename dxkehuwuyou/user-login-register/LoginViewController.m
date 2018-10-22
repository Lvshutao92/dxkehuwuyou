//
//  LoginViewController.m
//  dxkehuwuyou
//
//  Created by ilovedxracer on 2018/10/17.
//  Copyright © 2018 ilovedxracer. All rights reserved.
//

#import "LoginViewController.h"
#import "RegisterViewController.h"
#import "GetPasswordViewController.h"
@interface LoginViewController ()<UITextFieldDelegate>
@property(nonatomic,strong)UITextField *text1;
@property(nonatomic,strong)UITextField *text2;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setBackgroundImage];
    
    
}
- (void)clickLogin{
    NSDictionary *dict = [[NSDictionary alloc]init];
    NSNotification *notification =[NSNotification notificationWithName:@"hidden_login" object:nil userInfo:dict];
    [[NSNotificationCenter defaultCenter] postNotification:notification];
}










- (void)clickRegister{
    RegisterViewController *regis = [[RegisterViewController alloc]init];
    MainNavigationViewController *na = [[MainNavigationViewController alloc]initWithRootViewController:regis];
    regis.title = @"注册";
    [self presentViewController:na animated:YES completion:nil];
}
- (void)clickGetpassword{
    GetPasswordViewController *regis = [[GetPasswordViewController alloc]init];
    MainNavigationViewController *na = [[MainNavigationViewController alloc]initWithRootViewController:regis];
    regis.title = @"找回密码";
    [self presentViewController:na animated:YES completion:nil];
}



- (void)setBackgroundImage{
    UIImage * image = [UIImage imageNamed:@"bg1.jpg"];
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    imageView.image = image;
    imageView.userInteractionEnabled = YES;
    [self.view addSubview:imageView];
    
    self.text1 = [[UITextField alloc]initWithFrame:CGRectMake(10, SCREEN_HEIGHT/2-140, SCREEN_WIDTH-20, 50)];
    self.text1.delegate = self;
    self.text1.placeholder = @"请输入用户名";
    self.text1.borderStyle = UITextBorderStyleRoundedRect;
    self.text1.backgroundColor = [UIColor colorWithWhite:.99 alpha:.01];
    LRViewBorderRadius(self.text1, 25, 1, [UIColor colorWithWhite:.8 alpha:.5]);
    [imageView addSubview:self.text1];
    [self.text1 setValue:[UIColor colorWithWhite:.8 alpha:.5] forKeyPath:@"_placeholderLabel.textColor"];
    self.text1.textColor = [UIColor whiteColor];
    self.text1.leftView =  [[UIView alloc] initWithFrame:CGRectMake(0, 0, 20, 50)];
    self.text1.leftViewMode = UITextFieldViewModeAlways;
    self.text1.clearButtonMode = UITextFieldViewModeWhileEditing;
    
    self.text2 = [[UITextField alloc]initWithFrame:CGRectMake(10, SCREEN_HEIGHT/2-70, SCREEN_WIDTH-20, 50)];
    self.text2.delegate = self;
    self.text2.placeholder = @"请输入密码";
    self.text2.borderStyle = UITextBorderStyleRoundedRect;
    self.text2.backgroundColor = [UIColor colorWithWhite:.99 alpha:.01];
    LRViewBorderRadius(self.text2, 25, 1, [UIColor colorWithWhite:.8 alpha:.5]);
    [imageView addSubview:self.text2];
    [self.text2 setValue:[UIColor colorWithWhite:.8 alpha:.5] forKeyPath:@"_placeholderLabel.textColor"];
    self.text2.textColor = [UIColor whiteColor];
    self.text2.secureTextEntry = YES;
    self.text2.leftView =  [[UIView alloc] initWithFrame:CGRectMake(0, 0, 20, 50)];
    self.text2.leftViewMode = UITextFieldViewModeAlways;
    self.text2.clearButtonMode = UITextFieldViewModeWhileEditing;
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(10, SCREEN_HEIGHT/2+30, SCREEN_WIDTH-20, 50);
    [btn setTitle:@"登录" forState:UIControlStateNormal];
    LRViewBorderRadius(btn, 25, 0, [UIColor clearColor]);
    [btn setTitleColor:[UIColor colorWithWhite:.8 alpha:.5] forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor colorWithWhite:.2 alpha:.6];
    [imageView addSubview:btn];
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn1.frame = CGRectMake(SCREEN_WIDTH-110, SCREEN_HEIGHT/2+90, 100, 40);
    [btn1 setTitle:@"注册" forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor colorWithWhite:.8 alpha:.5] forState:UIControlStateNormal];
    btn1.titleLabel.font = FONT(14);
    [imageView addSubview:btn1];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn2.frame = CGRectMake(10, SCREEN_HEIGHT-60, SCREEN_WIDTH-20, 40);
    [btn2 setTitle:@"忘记密码？" forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor colorWithWhite:.8 alpha:.5] forState:UIControlStateNormal];
    btn2.titleLabel.font = FONT(14);
    [imageView addSubview:btn2];
    
    [btn addTarget:self action:@selector(clickLogin) forControlEvents:UIControlEventTouchUpInside];
    [btn1 addTarget:self action:@selector(clickRegister) forControlEvents:UIControlEventTouchUpInside];
    [btn2 addTarget:self action:@selector(clickGetpassword) forControlEvents:UIControlEventTouchUpInside];
    
}

@end
