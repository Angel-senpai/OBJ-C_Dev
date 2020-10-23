//
//  NewsViewController.m
//  OBJ-C_Dev
//
//  Created by Даниил Мурыгин on 23.10.2020.
//

#import "NewsViewController.h"
#import "NewsModel.h"

@interface NewsViewController ()
-(void)createTitleLabel:(NSString*)text;
-(void)createTextLabel:(NSString*)text;
-(void)createAuthorLabel:(NSString*)text;
@end

@implementation NewsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColor.whiteColor;
    [self.navigationController.navigationBar setHidden: true];
}

- (instancetype)initWithNews:(NewsModel *)model
{
    self = [super init];
    if (self) {
        [self createTitleLabel:model.title];
        [self createTextLabel:model.news_description];
        [self createAuthorLabel:model.author];
    }
    return self;
}
-(void)createTitleLabel:(NSString*)text{
    _newsTitle = [[UILabel alloc] init];
    _newsTitle.frame = CGRectMake(0, 0, self.view.frame.size.width * 0.8, self.view.frame.size.width * 0.2);
    _newsTitle.textAlignment = NSTextAlignmentCenter;
    [_newsTitle setNumberOfLines:0];
    CGPoint center = CGPointMake(self.view.frame.size.width / 2,0);
    _newsTitle.center = center;
    CGRect frame = _newsTitle.frame;
    frame.origin.y = self.view.frame.size.height * 0.2;
    _newsTitle.frame = frame;
    [_newsTitle setText:text];
    [self.view addSubview:_newsTitle];
}
-(void)createTextLabel:(NSString*)text{
    _newsText = [[UILabel alloc] init];
    _newsText.frame = CGRectMake(0, 0, self.view.frame.size.width * 0.9, self.view.frame.size.width * 0.4);
    [_newsText setNumberOfLines:0];
    CGPoint center = CGPointMake(self.view.frame.size.width / 2,0);
    _newsText.center = center;
    CGRect frame = _newsText.frame;
    frame.origin.y = CGRectGetMaxY([_newsTitle frame]) + self.view.frame.size.height * 0.01;
    _newsText.frame = frame;
    [_newsText setText:text];
    [self.view addSubview:_newsText];
}

-(void)createAuthorLabel:(NSString*)text{
    _newsAuthor = [[UILabel alloc] init];
    _newsAuthor.frame = CGRectMake(0, 0, self.view.frame.size.width * 0.2, self.view.frame.size.width * 0.2);
    [_newsAuthor setNumberOfLines:0];
    CGRect frame = _newsAuthor.frame;
    frame.origin.x = CGRectGetMaxX([_newsText frame]) - _newsAuthor.frame.size.width;
    frame.origin.y = CGRectGetMaxY([_newsText frame]) + self.view.frame.size.height * 0.05;
    _newsAuthor.frame = frame;
    [_newsAuthor setText:text];
    [self.view addSubview:_newsAuthor];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
