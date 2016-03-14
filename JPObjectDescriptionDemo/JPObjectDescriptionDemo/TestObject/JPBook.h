//
//  JPBook.h
//  JPObjectDescriptionDemo
//
//  Created by JiangpPei on 16/3/14.
//  Copyright © 2016年 JiangpPei. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "JPBookContent.h"

@interface JPBook : NSObject

@property (nonatomic, strong ) NSNumber      * bId;
@property (nonatomic, strong ) NSString      * name;
@property (nonatomic, strong ) NSString      * author;

@property (nonatomic, strong ) JPBookContent * content;

@end
