//
//  NSObject+JPObjectDescription.m
//  JPObjectDescriptionDemo
//
//  Created by JiangpPei on 16/3/14.
//  Copyright © 2016年 JiangpPei. All rights reserved.
//

#import "NSObject+JPObjectDescription.h"
#import <objc/runtime.h>
#import <UIKit/UIKit.h>

@implementation NSObject (JPObjectDescription)

/* get the object all properties*/
- (NSArray *)getAllProperties
{
    u_int count;
    objc_property_t *properties  =class_copyPropertyList([self class], &count);
    NSMutableArray *propertiesArray = [NSMutableArray arrayWithCapacity:count];
    for (int i = 0; i<count; i++)
    {
        const char* propertyName =property_getName(properties[i]);
        [propertiesArray addObject: [NSString stringWithUTF8String: propertyName]];
    }
    free(properties);
    return propertiesArray;
}

//custom description
-(NSString *)description{
    //exception UIView's subclass
    if ([[self class]isSubclassOfClass:[UIResponder class]]) {
        return nil;
    }
    else if ([[self class] isSubclassOfClass:[CALayer class]]) {
            return nil;
    }else{
        NSArray * allProperties = [self getAllProperties];
        NSString * print_str = [NSString stringWithFormat:@"⚠️%@\n",[self class]];
        for (NSString * property in allProperties) {
            print_str = [print_str stringByAppendingFormat:@"  └%@:%@\n",property, [self valueForKey:property]];
        }
        print_str =  [print_str stringByReplacingOccurrencesOfString:@"\n\n" withString:@"\n"];
        print_str =  [print_str stringByReplacingOccurrencesOfString:@"  " withString:@"    "];
        return print_str;
    }

}

@end
