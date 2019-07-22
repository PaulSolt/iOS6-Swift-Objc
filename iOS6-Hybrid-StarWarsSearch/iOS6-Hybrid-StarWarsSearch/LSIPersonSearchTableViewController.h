//
//  LSIPersonSearchTableViewController.h
//  iOS6-Hybrid-StarWarsSearch
//
//  Created by Paul Solt on 7/22/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LSIPerson;

NS_ASSUME_NONNULL_BEGIN

@interface LSIPersonSearchTableViewController : UITableViewController <UISearchBarDelegate>

@property (nonatomic, copy, nullable) NSArray<LSIPerson *> *people;

@end

NS_ASSUME_NONNULL_END
