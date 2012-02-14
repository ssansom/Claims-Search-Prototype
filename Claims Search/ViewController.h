//
//  ViewController.h
//  Claims Search
//
//  Created by Shawn Sansom on 2/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
        <UITableViewDelegate, UITableViewDataSource>

{
    NSArray *claims;
}
@property (nonatomic, strong) NSArray *claims;
@property (strong, nonatomic) IBOutlet UITableView *searchResults;
@end
