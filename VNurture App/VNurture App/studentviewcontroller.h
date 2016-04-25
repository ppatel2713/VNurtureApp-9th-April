//
//  studentviewcontroller.h
//
//  Created by   on 21/04/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface studentviewcontroller : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *internalBaseClassIdentifier;
@property (nonatomic, strong) NSString *middlename;
@property (nonatomic, strong) NSString *compney;
@property (nonatomic, strong) NSString *phone;
@property (nonatomic, strong) NSString *gender;
@property (nonatomic, strong) NSString *lastname;
@property (nonatomic, strong) NSString *dob;
@property (nonatomic, strong) NSString *firstname;
@property (nonatomic, strong) NSString *address;
@property (nonatomic, strong) NSString *parentno;
@property (nonatomic, strong) NSString *university;
@property (nonatomic, strong) NSString *courseid;
@property (nonatomic, strong) NSString *yearschool;
@property (nonatomic, strong) NSString *role;
@property (nonatomic, strong) NSString *password;
@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) NSString *experience;
@property (nonatomic, strong) NSString *status;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
