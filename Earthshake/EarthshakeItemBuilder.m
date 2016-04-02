//
//  EarthshakerItemBuilder.m
//  Earthshake
//
//  Created by Andrey Paunov on 2016-03-24.
//  Copyright © 2016 Andrey Paunov. All rights reserved.
//

#import "EarthshakeItemBuilder.h"

// Properties
#define kMetadata @"metadata"
#define kFeatures @"features"
#define kProperties @"properties"

@implementation EarthshakeItemBuilder

- (EarthshakeItem *)buildEarthshakeItem:(NSDictionary *)json
{
    if (!json)
    {
        return nil;
    }

    EarthshakeItem *earthshakeItem = [[EarthshakeItem alloc] init];
    earthshakeItem.properties = [json objectForKey:kProperties];

    return earthshakeItem;
}

- (NSArray *)buildAllEarthshakeItems:(id)json
{
    if (!json)
    {
        return nil;
    }

    NSMutableArray *earthshakeItems = [NSMutableArray array];
    NSArray *features = [json objectForKey:kFeatures];

    [features enumerateObjectsUsingBlock:^(id object, NSUInteger index, BOOL *stop)
    {
        [earthshakeItems addObject:[self buildEarthshakeItem:(NSDictionary *) object]];
    }];

    return earthshakeItems;
}

@end
