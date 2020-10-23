//
//  NetworkAPI.h
//  OBJ-C_Dev
//
//  Created by Даниил Мурыгин on 23.10.2020.
//

#import <Foundation/Foundation.h>
#import "NewsRequestModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface NetworkAPI : NSObject
+ (instancetype)sharedInstance;
- (void)newsForRequest:(void (^)(NewsRequestModel *news))completion;
@end

NS_ASSUME_NONNULL_END
