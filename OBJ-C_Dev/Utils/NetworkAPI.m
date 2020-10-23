//
//  NetworkAPI.m
//  OBJ-C_Dev
//
//  Created by Даниил Мурыгин on 23.10.2020.
//

#import "NetworkAPI.h"
#import <UIKit/UIKit.h>
#import "NewsRequestModel.h"

#define API_URL @"https://newsapi.org/v2/everything?q=apple&from=2020-10-22&to=2020-10-22&sortBy=popularity&apiKey=97b2a44edb584c6dbd28eb0f01042588"
@implementation NetworkAPI
+(instancetype)sharedInstance{
    static NetworkAPI *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[NetworkAPI alloc] init];
    });
    return instance;
}
-(void)newsForRequest:(void (^)(NewsRequestModel * _Nonnull))completion{
    [self load:API_URL withCompletion: ^(id _Nullable result){
        NSDictionary *json = result;
        NewsRequestModel *newsModel = [[NewsRequestModel alloc] initWithDictinary:json];
        
        completion(newsModel);
    }];
}

- (void)load:(NSString *)urlString withCompletion:(void (^)(id _Nullable result))completion {
    dispatch_async(dispatch_get_main_queue(), ^{
       [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
    });
    [[[NSURLSession sharedSession] dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
        });
        
        completion([NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil]);
    }] resume] ;
}

@end
