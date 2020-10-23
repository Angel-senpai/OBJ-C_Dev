//
//  SecondViewController.h
//  OBJ-C_Dev
//
//  Created by Даниил Мурыгин on 10.10.2020.
//

#import <UIKit/UIKit.h>
#import "NewsModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>

@property (strong, nonnull) UITableView *tableView;
@property (strong, nonnull) NSArray<NewsModel *> *news;

@end

NS_ASSUME_NONNULL_END
