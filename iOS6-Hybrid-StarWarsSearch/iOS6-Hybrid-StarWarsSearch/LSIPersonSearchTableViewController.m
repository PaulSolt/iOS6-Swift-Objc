//
//  LSIPersonSearchTableViewController.m
//  iOS6-Hybrid-StarWarsSearch
//
//  Created by Paul Solt on 7/22/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSIPersonSearchTableViewController.h"
#import "iOS6_Hybrid_StarWarsSearch-Swift.h"
#import "LSIPerson.h"

// Class Extension
@interface LSIPersonSearchTableViewController ()

@property (strong, nonatomic) IBOutlet UISearchBar *searchBar;

@end

@implementation LSIPersonSearchTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _searchBar.delegate = self;
    

}

- (void)setPeople:(NSArray<LSIPerson *> *)people {
    _people = [people copy];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.tableView reloadData];
    });
}



#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _people.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    LSIPersonTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PersonCell" forIndexPath:indexPath];
    
    LSIPerson *person = self.people[indexPath.row];
    
    cell.nameLabel.text = person.name;
    cell.heightLabel.text = [NSString stringWithFormat:@"%f", person.height];//person.height;
    cell.birthYearLabel.text = person.birthYear;
    cell.eyeColorLabel.text = person.eyeColor;
    
    return cell;
}

#pragma mark - UISearchBarDelegate

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    
//    searchBar.text
    
    [[LSIPersonController sharedController] searchForPeopleWith:searchBar.text completion:^(NSArray<LSIPerson *> * _Nullable people, NSError * _Nullable error) {
        if(error) {
            NSLog(@"Error searching: %@", error);
        }
        
        NSLog(@"Results: %ld", people.count);
        
        self.people = people;
    }];
}




@end
