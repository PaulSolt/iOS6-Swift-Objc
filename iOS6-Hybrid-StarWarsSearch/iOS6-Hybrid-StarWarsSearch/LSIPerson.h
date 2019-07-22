//
//  LSIPerson.h
//  iOS6-Hybrid-StarWarsSearch
//
//  Created by Paul Solt on 7/22/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LSIPerson : NSObject

@property (nonatomic, copy, readonly, nonnull) NSString *name;
@property (nonatomic, copy, readonly, nonnull) NSString *birthYear;
@property (nonatomic, readonly) double height;
@property (nonatomic, copy, readonly, nonnull) NSString *eyeColor;

- (nullable instancetype)initWithName:(NSString *_Nonnull)name
                   birthYear:(NSString *_Nonnull)birthYear
                      height:(double)height
                    eyeColor:(NSString *_Nonnull)eyeColor;

// Make this failable initializer: init?(dictionary:)
- (nullable instancetype)initWithDictionary:(NSDictionary *_Nullable)dictionary;

@end

