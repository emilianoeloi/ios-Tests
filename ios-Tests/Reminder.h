//
//  Reminder.h
//  ios-Tests
//
//  Created by Emiliano Barbosa on 1/25/16.
//  Copyright © 2016 Bocamuchas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ReminderID : NSObject

@property (nonatomic, strong) NSUserDefaults *userDefaults;

@end

@interface TestableReminderId : ReminderID

@end

@interface Reminder : NSObject

@end
