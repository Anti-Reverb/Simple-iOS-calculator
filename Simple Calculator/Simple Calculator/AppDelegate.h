//
//  AppDelegate.h
//  Simple Calculator
//
//  Created by Aryan Shaikh on 31/03/18.
//  Copyright © 2018 Aryan Shaikh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

