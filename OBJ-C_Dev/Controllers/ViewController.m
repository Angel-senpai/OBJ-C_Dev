//
//  ViewController.m
//  OBJ-C_Dev
//
//  Created by Даниил Мурыгин on 10.10.2020.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
-(void)createButton;
-(void)tapAction;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    (void)self.createButton;
}

-(void)createButton{
    CGRect frame = CGRectMake(0,
                              0,
                              self.view.frame.size.width * 0.3,
                              self.view.frame.size.width * 0.15);
    _button = [[UIButton alloc] initWithFrame:frame];
    _button.backgroundColor = [UIColor lightGrayColor];
    [_button setTitle:@"Кнопка" forState:UIControlStateNormal];
    _button.layer.cornerRadius = _button.frame.size.height / 2.5;
    
    CGPoint center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2);
    _button.center = center;
    
    [_button addTarget:self action: @selector(tapAction) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview: _button];
}
-   (void)tapAction{
    SecondViewController *second = [[SecondViewController alloc] init];
    second.view.backgroundColor = [UIColor blueColor];
    [self.navigationController showViewController:second sender:self];
}

@end
