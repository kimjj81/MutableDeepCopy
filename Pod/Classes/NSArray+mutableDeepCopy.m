//
//  NSArray+mutableDeepCopy.m
//  SPDataCenter
//
//  Created by KimJeongJin on 2014. 12. 22..
//  Copyright (c) 2014년 OGQ Corp. All rights reserved.
//

#import "NSArray+mutableDeepCopy.h"

@implementation NSArray (mutableDeepCopy)
-(NSMutableArray*)mutableDeepCopy
{
    NSMutableArray* mutableArray = [self mutableCopy];

    for (int i=0;i<[self count];i++)
    {
        id instance = [self objectAtIndex:i];
        if([instance respondsToSelector:@selector(mutableDeepCopy)])
        {
            [mutableArray replaceObjectAtIndex:i withObject:[instance mutableDeepCopy]];
        }
    }

    return mutableArray;
}
@end
