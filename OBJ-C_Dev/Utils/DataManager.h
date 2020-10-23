//
//  DataManager.h
//  OBJ-C_Dev
//
//  Created by Даниил Мурыгин on 23.10.2020.
//

#import <Foundation/Foundation.h>
#include "NewsRequestModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface DataManager : NSObject
+ (instancetype)sharedInstance;
- (void)loadData;

@property (nonatomic, strong, readonly) NewsRequestModel *newsRequest;
@end

NS_ASSUME_NONNULL_END
