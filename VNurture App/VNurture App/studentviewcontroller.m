//
//  studentviewcontroller.m
//
//  Created by   on 21/04/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "studentviewcontroller.h"


NSString *const kstudentviewcontrollerId = @"id";
NSString *const kstudentviewcontrollerMiddlename = @"middlename";
NSString *const kstudentviewcontrollerCompney = @"compney";
NSString *const kstudentviewcontrollerPhone = @"phone";
NSString *const kstudentviewcontrollerGender = @"gender";
NSString *const kstudentviewcontrollerLastname = @"lastname";
NSString *const kstudentviewcontrollerDob = @"dob";
NSString *const kstudentviewcontrollerFirstname = @"firstname";
NSString *const kstudentviewcontrollerAddress = @"address";
NSString *const kstudentviewcontrollerParentno = @"parentno";
NSString *const kstudentviewcontrollerUniversity = @"university";
NSString *const kstudentviewcontrollerCourseid = @"courseid";
NSString *const kstudentviewcontrollerYearschool = @"yearschool";
NSString *const kstudentviewcontrollerRole = @"role";
NSString *const kstudentviewcontrollerPassword = @"password";
NSString *const kstudentviewcontrollerEmail = @"email";
NSString *const kstudentviewcontrollerExperience = @"experience";
NSString *const kstudentviewcontrollerStatus = @"status";


@interface studentviewcontroller ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation studentviewcontroller

@synthesize internalBaseClassIdentifier = _internalBaseClassIdentifier;
@synthesize middlename = _middlename;
@synthesize compney = _compney;
@synthesize phone = _phone;
@synthesize gender = _gender;
@synthesize lastname = _lastname;
@synthesize dob = _dob;
@synthesize firstname = _firstname;
@synthesize address = _address;
@synthesize parentno = _parentno;
@synthesize university = _university;
@synthesize courseid = _courseid;
@synthesize yearschool = _yearschool;
@synthesize role = _role;
@synthesize password = _password;
@synthesize email = _email;
@synthesize experience = _experience;
@synthesize status = _status;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict
{
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if(self && [dict isKindOfClass:[NSDictionary class]]) {
            self.internalBaseClassIdentifier = [self objectOrNilForKey:kstudentviewcontrollerId fromDictionary:dict];
            self.middlename = [self objectOrNilForKey:kstudentviewcontrollerMiddlename fromDictionary:dict];
            self.compney = [self objectOrNilForKey:kstudentviewcontrollerCompney fromDictionary:dict];
            self.phone = [self objectOrNilForKey:kstudentviewcontrollerPhone fromDictionary:dict];
            self.gender = [self objectOrNilForKey:kstudentviewcontrollerGender fromDictionary:dict];
            self.lastname = [self objectOrNilForKey:kstudentviewcontrollerLastname fromDictionary:dict];
            self.dob = [self objectOrNilForKey:kstudentviewcontrollerDob fromDictionary:dict];
            self.firstname = [self objectOrNilForKey:kstudentviewcontrollerFirstname fromDictionary:dict];
            self.address = [self objectOrNilForKey:kstudentviewcontrollerAddress fromDictionary:dict];
            self.parentno = [self objectOrNilForKey:kstudentviewcontrollerParentno fromDictionary:dict];
            self.university = [self objectOrNilForKey:kstudentviewcontrollerUniversity fromDictionary:dict];
            self.courseid = [self objectOrNilForKey:kstudentviewcontrollerCourseid fromDictionary:dict];
            self.yearschool = [self objectOrNilForKey:kstudentviewcontrollerYearschool fromDictionary:dict];
            self.role = [self objectOrNilForKey:kstudentviewcontrollerRole fromDictionary:dict];
            self.password = [self objectOrNilForKey:kstudentviewcontrollerPassword fromDictionary:dict];
            self.email = [self objectOrNilForKey:kstudentviewcontrollerEmail fromDictionary:dict];
            self.experience = [self objectOrNilForKey:kstudentviewcontrollerExperience fromDictionary:dict];
            self.status = [self objectOrNilForKey:kstudentviewcontrollerStatus fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.internalBaseClassIdentifier forKey:kstudentviewcontrollerId];
    [mutableDict setValue:self.middlename forKey:kstudentviewcontrollerMiddlename];
    [mutableDict setValue:self.compney forKey:kstudentviewcontrollerCompney];
    [mutableDict setValue:self.phone forKey:kstudentviewcontrollerPhone];
    [mutableDict setValue:self.gender forKey:kstudentviewcontrollerGender];
    [mutableDict setValue:self.lastname forKey:kstudentviewcontrollerLastname];
    [mutableDict setValue:self.dob forKey:kstudentviewcontrollerDob];
    [mutableDict setValue:self.firstname forKey:kstudentviewcontrollerFirstname];
    [mutableDict setValue:self.address forKey:kstudentviewcontrollerAddress];
    [mutableDict setValue:self.parentno forKey:kstudentviewcontrollerParentno];
    [mutableDict setValue:self.university forKey:kstudentviewcontrollerUniversity];
    [mutableDict setValue:self.courseid forKey:kstudentviewcontrollerCourseid];
    [mutableDict setValue:self.yearschool forKey:kstudentviewcontrollerYearschool];
    [mutableDict setValue:self.role forKey:kstudentviewcontrollerRole];
    [mutableDict setValue:self.password forKey:kstudentviewcontrollerPassword];
    [mutableDict setValue:self.email forKey:kstudentviewcontrollerEmail];
    [mutableDict setValue:self.experience forKey:kstudentviewcontrollerExperience];
    [mutableDict setValue:self.status forKey:kstudentviewcontrollerStatus];

    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

- (NSString *)description 
{
    return [NSString stringWithFormat:@"%@", [self dictionaryRepresentation]];
}

#pragma mark - Helper Method
- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict
{
    id object = [dict objectForKey:aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}


#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];

    self.internalBaseClassIdentifier = [aDecoder decodeObjectForKey:kstudentviewcontrollerId];
    self.middlename = [aDecoder decodeObjectForKey:kstudentviewcontrollerMiddlename];
    self.compney = [aDecoder decodeObjectForKey:kstudentviewcontrollerCompney];
    self.phone = [aDecoder decodeObjectForKey:kstudentviewcontrollerPhone];
    self.gender = [aDecoder decodeObjectForKey:kstudentviewcontrollerGender];
    self.lastname = [aDecoder decodeObjectForKey:kstudentviewcontrollerLastname];
    self.dob = [aDecoder decodeObjectForKey:kstudentviewcontrollerDob];
    self.firstname = [aDecoder decodeObjectForKey:kstudentviewcontrollerFirstname];
    self.address = [aDecoder decodeObjectForKey:kstudentviewcontrollerAddress];
    self.parentno = [aDecoder decodeObjectForKey:kstudentviewcontrollerParentno];
    self.university = [aDecoder decodeObjectForKey:kstudentviewcontrollerUniversity];
    self.courseid = [aDecoder decodeObjectForKey:kstudentviewcontrollerCourseid];
    self.yearschool = [aDecoder decodeObjectForKey:kstudentviewcontrollerYearschool];
    self.role = [aDecoder decodeObjectForKey:kstudentviewcontrollerRole];
    self.password = [aDecoder decodeObjectForKey:kstudentviewcontrollerPassword];
    self.email = [aDecoder decodeObjectForKey:kstudentviewcontrollerEmail];
    self.experience = [aDecoder decodeObjectForKey:kstudentviewcontrollerExperience];
    self.status = [aDecoder decodeObjectForKey:kstudentviewcontrollerStatus];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_internalBaseClassIdentifier forKey:kstudentviewcontrollerId];
    [aCoder encodeObject:_middlename forKey:kstudentviewcontrollerMiddlename];
    [aCoder encodeObject:_compney forKey:kstudentviewcontrollerCompney];
    [aCoder encodeObject:_phone forKey:kstudentviewcontrollerPhone];
    [aCoder encodeObject:_gender forKey:kstudentviewcontrollerGender];
    [aCoder encodeObject:_lastname forKey:kstudentviewcontrollerLastname];
    [aCoder encodeObject:_dob forKey:kstudentviewcontrollerDob];
    [aCoder encodeObject:_firstname forKey:kstudentviewcontrollerFirstname];
    [aCoder encodeObject:_address forKey:kstudentviewcontrollerAddress];
    [aCoder encodeObject:_parentno forKey:kstudentviewcontrollerParentno];
    [aCoder encodeObject:_university forKey:kstudentviewcontrollerUniversity];
    [aCoder encodeObject:_courseid forKey:kstudentviewcontrollerCourseid];
    [aCoder encodeObject:_yearschool forKey:kstudentviewcontrollerYearschool];
    [aCoder encodeObject:_role forKey:kstudentviewcontrollerRole];
    [aCoder encodeObject:_password forKey:kstudentviewcontrollerPassword];
    [aCoder encodeObject:_email forKey:kstudentviewcontrollerEmail];
    [aCoder encodeObject:_experience forKey:kstudentviewcontrollerExperience];
    [aCoder encodeObject:_status forKey:kstudentviewcontrollerStatus];
}

- (id)copyWithZone:(NSZone *)zone
{
    studentviewcontroller *copy = [[studentviewcontroller alloc] init];
    
    if (copy) {

        copy.internalBaseClassIdentifier = [self.internalBaseClassIdentifier copyWithZone:zone];
        copy.middlename = [self.middlename copyWithZone:zone];
        copy.compney = [self.compney copyWithZone:zone];
        copy.phone = [self.phone copyWithZone:zone];
        copy.gender = [self.gender copyWithZone:zone];
        copy.lastname = [self.lastname copyWithZone:zone];
        copy.dob = [self.dob copyWithZone:zone];
        copy.firstname = [self.firstname copyWithZone:zone];
        copy.address = [self.address copyWithZone:zone];
        copy.parentno = [self.parentno copyWithZone:zone];
        copy.university = [self.university copyWithZone:zone];
        copy.courseid = [self.courseid copyWithZone:zone];
        copy.yearschool = [self.yearschool copyWithZone:zone];
        copy.role = [self.role copyWithZone:zone];
        copy.password = [self.password copyWithZone:zone];
        copy.email = [self.email copyWithZone:zone];
        copy.experience = [self.experience copyWithZone:zone];
        copy.status = [self.status copyWithZone:zone];
    }
    
    return copy;
}


@end
