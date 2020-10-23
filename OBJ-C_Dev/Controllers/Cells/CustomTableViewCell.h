//
//  TableViewCell.h
//  OBJ-C_Dev
//
//  Created by Даниил Мурыгин on 16.10.2020.
//

#import <UIKit/UIKit.h>
#import "NewsModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface CustomTableViewCell : UITableViewCell
@property (nonatomic, strong) NewsModel *news;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *authorLabel;

-(void)configurateWithNews:(NewsModel*)news;
@end

NS_ASSUME_NONNULL_END
