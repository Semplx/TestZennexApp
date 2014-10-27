//
//  TabViewController.m
//  TestApp
//
//  Created by Oleg Melnik on 25.10.14.
//  Copyright (c) 2014 Oleg Melnik. All rights reserved.
//

#import "TabViewController.h"
#import "ListViewController.h"
#import "GalleryViewController.h"
#import "ServiceViewController.h"

@interface TabViewController ()

@end

@implementation TabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // создание контроллеров и иконок
    UINavigationController *listViewController = [[UINavigationController alloc] initWithRootViewController:[[ListViewController alloc] initWithNibName:nil bundle:nil]];
    UINavigationController *galleryViewController = [[UINavigationController alloc] initWithRootViewController:[[GalleryViewController alloc] initWithNibName:nil bundle:nil]];
    UINavigationController *serviceViewController = [[UINavigationController alloc] initWithRootViewController:[[ServiceViewController alloc] initWithNibName:nil bundle:nil]];
    self.viewControllers = [NSArray arrayWithObjects:listViewController, galleryViewController, serviceViewController, nil];
    UITabBarItem *item = self.tabBar.items[0];
    item.title = @"List";
    item.image = [UIImage imageNamed:@"ListIcon"];
    item = self.tabBar.items[1];
    item.title = @"Gallery";
    item.image = [UIImage imageNamed:@"GalleryIcon"];
    item = self.tabBar.items[2];
    item.title = @"Service";
    item.image = [UIImage imageNamed:@"ServiceIcon"];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
