//
//  NewsViewController.h
//  OBJ-C_Dev
//
//  Created by Даниил Мурыгин on 23.10.2020.
//

#import <UIKit/UIKit.h>
#import "NewsModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface NewsViewController : UIViewController
@property (nonatomic,strong) UILabel *newsTitle;
@property (nonatomic,strong) UILabel *newsText;
@property (nonatomic,strong) UILabel *newsAuthor;
- (instancetype)initWithNews:(NewsModel *)model;
@end

NS_ASSUME_NONNULL_END
