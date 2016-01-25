//
//  Reminder.m
//  ios-Tests
//
//  Created by Emiliano Barbosa on 1/25/16.
//  Copyright © 2016 Bocamuchas. All rights reserved.
//

#import "Reminder.h"
#import <AFNetworking/AFNetworking.h>

@implementation ReminderID

-(NSNumber *)nextID{
    NSNumber *result = [[self userDefaults] objectForKey:@"reminderId"];
    if (!result) {
        result = @0;
    }
    return result;
}

-(NSUserDefaults *)userDefaults{
    return [NSUserDefaults standardUserDefaults];
}

-(instancetype)initWithUserDefaults:(NSUserDefaults *)userDefaults{
    self = [super init];
    if (self) {
        _userDefaults = userDefaults;
    }
    return self;
}

-(void)fetchResources{
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    
    NSURL *URL = [NSURL URLWithString:@"http://developers.agenciaideias.com.br/correios/rastreamento/json/PJ199357252BR"];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    
    NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
        if (error) {
            NSLog(@"Error: %@", error);
        } else {
            NSLog(@"%@ %@", response, responseObject);
        }
    }];
    [dataTask resume];

    
}

@end

@implementation TestableReminderId

-(NSUserDefaults *)userDefaults{
    return nil;
}

@end

@implementation Reminder

@end
