//
//  TableViewCell.m
//  OBJ-C_Dev
//
//  Created by Даниил Мурыгин on 16.10.2020.
//

#import "CustomTableViewCell.h"


@implementation CustomTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.numberOfLines = 0;
        _titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
        [self.contentView addSubview:_titleLabel];
        _authorLabel = [[UILabel alloc] init];
        _authorLabel.numberOfLines = 0;
        _authorLabel.lineBreakMode = NSLineBreakByWordWrapping;
        [self.contentView addSubview:_authorLabel];
    }
    return self;
}


-(void)configurateWithNews:(NewsModel*)news{
    
    [_titleLabel setText:news.title];
    [_authorLabel setText:news.author];
    
    _titleLabel.frame = CGRectMake(CGRectGetMaxX([UIScreen mainScreen].bounds) * 0.05, 0, [UIScreen mainScreen].bounds.size.width * 0.65, [UIScreen mainScreen].bounds.size.width * 0.2);
    _authorLabel.frame = CGRectMake((CGRectGetMaxX([_titleLabel frame]) + CGRectGetWidth([_titleLabel frame]) * 0.04),
                                    0,
                                    [UIScreen mainScreen].bounds.size.width * 0.2,
                                    [UIScreen mainScreen].bounds.size.width * 0.2);
}

@end
