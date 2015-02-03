//
//  NSDictionary+mutableDeepCopy.m
//  SPDataCenter
//
//  Created by KimJeongJin on 2014. 12. 22..
//  Copyright (c) 2014년 OGQ Corp. All rights reserved.
//

#import "NSDictionary+mutableDeepCopy.h"

@implementation NSDictionary (mutableDeepCopy)
-(NSMutableDictionary*)mutableDeepCopy;
{
    NSMutableDictionary* mutableDictionary = [self mutableCopy];
    
    for(NSString* key in self)
    {
        id object = [self valueForKey:key];
        if([object respondsToSelector:@selector(mutableDeepCopy)])
        {
            [mutableDictionary setValue:[object mutableDeepCopy] forKey:key];
        }
    }
    
    return mutableDictionary;
}
@end
