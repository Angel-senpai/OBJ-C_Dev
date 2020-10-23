//
//  NewsModel.h
//  OBJ-C_Dev
//
//  Created by Даниил Мурыгин on 23.10.2020.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NewsModel : NSObject
@property (nonatomic,strong) NSString *author;
@property (nonatomic,strong) NSString *title;
@property (nonatomic,strong) NSString *news_description;

-(instancetype)initWithDictinary:(NSDictionary *)dictinary;
@end

NS_ASSUME_NONNULL_END
