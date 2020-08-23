//
//  SceneDelegate.m
//  网易云
//
//  Created by 房彤 on 2020/7/16.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "SceneDelegate.h"
#import "MyFind.h"
#import "MyVideo.h"
#import "MyMusic.h"
#import "MyFriend.h"
#import "MyAccount.h"


@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    
    _window = [[UIWindow alloc] initWithWindowScene:scene];
    
    //显示window
    [_window makeKeyAndVisible];
    
    MyFind *myFind = [[MyFind alloc] init];
    MyVideo *myVideo = [[MyVideo alloc] init];
    MyMusic *myMusic = [[MyMusic alloc] init];
    MyFriend *myFriend = [[MyFriend alloc] init];
    MyAccount *myAccount = [[MyAccount alloc] init];
    
    myFind.title = @"发现";
    myVideo.title = @"视频";
    myMusic.title = @"我的";
    myFriend.title = @"云村";
    myAccount.title = @"账号";
    
    myMusic.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"6.jpg"]];
  // myAccount.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"6.jpg"]];
    
    myFind.view.backgroundColor = [UIColor whiteColor];
    myVideo.view.backgroundColor = [UIColor whiteColor];
    //myMusic.view.backgroundColor = [UIColor whiteColor];
    myFriend.view.backgroundColor = [UIColor whiteColor];
    myAccount.view.backgroundColor = [UIColor whiteColor];
    
    //分栏控制器
    UITabBarController *tb = [[UITabBarController alloc] init];
    
    [[UITabBar appearance] setTintColor:[UIColor colorWithRed:300/255 green:86/255 blue:89/255 alpha:1]];
    
    //导航栏控制器
    UINavigationController *navMyMucic = [[UINavigationController alloc] initWithRootViewController:myMusic];
    UINavigationController *navMyAccount = [[UINavigationController alloc] initWithRootViewController:myAccount];
   
    
    
    NSArray *arrayMy = [NSArray arrayWithObjects:myFind, myVideo, navMyMucic, myFriend, navMyAccount, nil];
    
    tb.viewControllers = arrayMy;
    
    
    
    self.window.rootViewController = tb;
    
    tb.selectedIndex = 4;
    
    //透明度
    tb.tabBar.translucent = YES;
    
    
    
    
   // tb.tabBar.backgroundColor = [UIColor redColor];
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
