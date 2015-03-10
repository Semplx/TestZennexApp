//
//  ServiceViewController.m
//  TestApp
//
//  Created by Oleg Melnik on 25.10.14.
//  Copyright (c) 2014 Oleg Melnik. All rights reserved.
//

#import "ServiceViewController.h"
#import "DataLoader.h"

@interface ServiceViewController () {
    UITextView *xmlTextView;
}

@end

@implementation ServiceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    self.title = @"Service";
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    [scrollView setTranslatesAutoresizingMaskIntoConstraints:NO];
    scrollView.backgroundColor = [UIColor redColor];
    xmlTextView = [[UITextView alloc] init];
    [xmlTextView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:xmlTextView];
    self.navigationController.navigationBar.translucent = NO;
    self.tabBarController.tabBar.translucent = NO;
    [self.view addConstraints:[NSLayoutConstraint
            constraintsWithVisualFormat:@"H:|-0-[xmlTextView]-0-|"
                                options:NSLayoutFormatDirectionLeadingToTrailing
                                metrics:nil
                                  views:NSDictionaryOfVariableBindings(xmlTextView)]];
    [self.view addConstraints:[NSLayoutConstraint
            constraintsWithVisualFormat:@"V:|-0-[xmlTextView]-0-|"
                                options:NSLayoutFormatDirectionLeadingToTrailing
                                metrics:nil
                                  views:NSDictionaryOfVariableBindings(xmlTextView)]];
    //self.edgesForExtendedLayout = UIRectEdgeNone;
    self.automaticallyAdjustsScrollViewInsets = YES;
    xmlTextView.font = [UIFont systemFontOfSize:14];//    NSLog(xmlTextView.text);
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    DataLoader *dataLoader = [DataLoader sharedInstance];
    __block NSString *xml = [NSString string];
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        xml = [dataLoader getDataStringFromUrl:@"http://bash.zennexgroup.com/service/ru/get.php?type=last"];
        dispatch_async(dispatch_get_main_queue(), ^{
            xmlTextView.text = xml;
        });
    });
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
