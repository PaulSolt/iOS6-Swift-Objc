//
//  LSIPerson.h
//  iOS6-Hybrid-StarWarsSearch
//
//  Created by Paul Solt on 7/22/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LSIPerson : NSObject

@property (nonatomic, copy, readonly) NSString *name;
@property (nonatomic, copy, readonly) NSString *birthYear;
@property (nonatomic, readonly) double height;
@property (nonatomic, copy, readonly) NSString *eyeColor;

- (instancetype)initWithName:(NSString *)name
                   birthYear:(NSString *)birthYear
                      height:(double)height
                    eyeColor:(NSString *)eyeColor;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

