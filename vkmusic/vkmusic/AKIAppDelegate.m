//
//  AppDelegate.m
//  vkmusic
//
//  Created by Alexey Khomych on 31.12.16.
//  Copyright © 2016 Alexey Khomych. All rights reserved.
//

#import "AKIAppDelegate.h"

#import "AKIVKLoginViewController.h"

#import "UIWindow+AKIExtensions.h"

#import "UIViewController+AKIExtensions.h"

@implementation AKIAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UIWindow *window = [UIWindow window];
    self.window = window;

    AKIVKLoginViewController *controller = [AKIVKLoginViewController new];
    
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:controller];
    window.rootViewController = navigationController;
    
    [window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {

}


- (void)applicationDidEnterBackground:(UIApplication *)application {

}


- (void)applicationWillEnterForeground:(UIApplication *)application {

}


- (void)applicationDidBecomeActive:(UIApplication *)application {

}


- (void)applicationWillTerminate:(UIApplication *)application {
    
}


@end
