//
//  ViewController.m
//  Claims Search
//
//  Created by Shawn Sansom on 2/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "Claim.h"

@implementation ViewController

@synthesize claims;
@synthesize searchResults;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    Claim *claim1 = [[Claim alloc] initWithProvider : @"Dr. Kenneth Zweig": false: [[NSDate alloc] init]];
    
    Claim *claim2 = [[Claim alloc] initWithProvider : @"Dr. Bob Dole": false: [[NSDate alloc] init]];

    Claim *claim3 = [[Claim alloc] initWithProvider : @"Dr. Jack Kevorkian": true: [[NSDate alloc] init]];
    
    Claim *claim4 = [[Claim alloc] initWithProvider : @"Dr. Curl Man": true: [[NSDate alloc] init]];
    
    Claim *claim5 = [[Claim alloc] initWithProvider : @"Dr. House": true: [[NSDate alloc] init]];
    
    self.claims = [[NSArray alloc] initWithObjects: claim1, claim2, claim3, claim4, claim5, nil];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.claims = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.claims count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell.
    Claim *claim = [self.claims objectAtIndex: [indexPath row]];
    
    if (claim.approved) {
        UIImage *cellImage = [UIImage imageNamed:@"circle_green.png"];
        cell.imageView.image = cellImage;                
    }
    else{
        UIImage *cellImage = [UIImage imageNamed:@"circle_orange.png"];
        cell.imageView.image = cellImage;                        
    }
    
    cell.textLabel.text =  claim.provider;
    
    NSDateFormatter *df = [NSDateFormatter new];
    [df setDateFormat:@"EEEE dd MMMM, yyyy"];
    cell.detailTextLabel.text = [df stringFromDate:claim.serviceDate ];
                           
    return cell;
}

- (IBAction)search:(id)sender {
    searchResults.hidden = false;
}

@end
