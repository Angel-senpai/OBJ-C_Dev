//
//  SecondViewController.h
//  OBJ-C_Dev
//
//  Created by Даниил Мурыгин on 10.10.2020.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController <UITableViewDataSource>

@property (strong, nonnull) UITableView *tableView;

@end

NS_ASSUME_NONNULL_END
