//
//  Claim.m
//  Claims Search
//
//  Created by Shawn Sansom on 2/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//
#import "Claim.h"

@implementation Claim


-(Claim*) initWithProvider: (NSString*) _provider : (bool) _approved : (NSDate*) _serviceDate{
    if(self = [super init])
    {
        approved = _approved;
        provider = _provider;
        serviceDate = _serviceDate;
    }
    return self;
}
@synthesize approved;
@synthesize provider;
@synthesize serviceDate;

@end
