//
//  AKIUser.m
//  iOSProject
//
//  Created by Alexey Khomych on 28.07.16.
//  Copyright © 2016 Alexey Khomych. All rights reserved.
//

#import "AKIUser.h"

//#import "AKIImageModel.h"

//#import "AKIFBFriends.h"

#import "AKIArrayModel.h"

#import "NSFileManager+AKIExtensions.h"

#import "AKIMacro.h"

#define AKIKeyConstant(value) AKIStringConstant(value, @"kAKI" #value);

AKIKeyConstant(ID)
AKIKeyConstant(Name)
AKIKeyConstant(Birthday)
AKIKeyConstant(Country)
AKIKeyConstant(City)
AKIKeyConstant(Url)

@interface AKIUser ()
@property (nonatomic, strong) AKIArrayModel *friends;

@end

@implementation AKIUser

#pragma mark -
#pragma mark Initializations and Deallocations

- (instancetype)init {
    self = [super init];
    
    if (self) {
        self.friends = [AKIArrayModel new];
    }
    
    return self;
}

#pragma mark -
#pragma mark Accessors

//- (AKIImageModel *)imageModel {
//    return [AKIImageModel imageWithURL:self.url];
//}

#pragma mark -
#pragma mark NSCopying

#define AKIDecode(object, key) self.object = [aDecoder decodeObjectForKey:key];

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    
    AKIDecode(ID, kAKIID)
    AKIDecode(name, kAKIName)
    AKIDecode(birthday, kAKIBirthday)
    AKIDecode(country, kAKICountry)
    AKIDecode(city, kAKICity);
    AKIDecode(url, kAKIUrl);
    
    return self;
}

#undef AKIDecode

#define AKIEncode(object, key) [aCoder encodeObject:self.object forKey:key];

- (void)encodeWithCoder:(NSCoder *)aCoder {
    AKIEncode(ID, kAKIID)
    AKIEncode(name, kAKIName)
    AKIEncode(birthday, kAKIBirthday)
    AKIEncode(country, kAKICountry)
    AKIEncode(city, kAKICity)
    AKIEncode(url, kAKIUrl)
}

#undef AKIEncode

@end
