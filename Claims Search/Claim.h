//
//  Claim.h
//  Claims Search
//
//  Created by Shawn Sansom on 2/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Claim : NSObject
{
    NSString *provider;
    bool approved;
    NSDate *serviceDate;
}

-(Claim*) initWithProvider: (NSString*) _provider : (bool) _approved : (NSDate*) _serviceDate;
@property (atomic, strong) NSString *provider;
@property (atomic) bool approved;
@property (atomic, strong) NSDate *serviceDate;

@end
