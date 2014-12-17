//
//  DBCollectionViewFlowLayout.m
//  DBCamera
//
//  Created by iBo on 06/03/14.
//  Copyright (c) 2014 PSSD - Daniele Bogo. All rights reserved.
//

#import "DBCollectionViewFlowLayout.h"

@implementation DBCollectionViewFlowLayout

-(id) init
{
    self = [super init];
    if ( self ) {
        CGSize msize = [[UIScreen mainScreen] bounds].size;
        float width = msize.width/3-1.5;
        [self setItemSize:(CGSize){ width, width }];
        [self setScrollDirection:UICollectionViewScrollDirectionVertical];
        [self setSectionInset:UIEdgeInsetsZero];
        [self setMinimumLineSpacing:2];
        [self setMinimumInteritemSpacing:2];
    }
    return self;
}

- (BOOL) shouldInvalidateLayoutForBoundsChange:(CGRect)oldBounds
{
    return YES;
}

@end