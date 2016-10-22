//
//  ViewController.m
//  123
//
//  Created by 王子淼 on 2016/10/13.
//  Copyright © 2016年 WZM. All rights reserved.
//

#import "ViewController.h"
#import <CoreFoundation/CFString.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString* date;
    
    NSDateFormatter * formatter = [[NSDateFormatter alloc ] init];
    //[formatter setDateFormat:@"YYYY.MM.dd.hh.mm.ss"];
    [formatter setDateFormat:@"YYYY-MM-dd hh:mm:ss:SSS"];
    date = [formatter stringFromDate:[NSDate date]];
//    timeNow = [[NSString alloc] initWithFormat:@"%@", date];
//    NSLog(@"%@", timeNow);
    
//    NSString *savedTime = [[NSUserDefaults standardUserDefaults] stringForKey:@"time"];
    NSString *time = [NSString stringWithFormat:@"%f", (double)[[NSDate date] timeIntervalSince1970]];
    NSLog(@"=======%@-========%@",time,date);
    NSLog(@"======%.f",([time doubleValue] - [date doubleValue]) * 1000);
    
    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:@"123",@"key1",@"23",@"key2",@"45",@"key3",nil];
    NSLog(@"===dict:%@",dict);
    
    //生成一个uuid的方法
    CFUUIDRef uuidRef = CFUUIDCreate(kCFAllocatorDefault);
    
    NSString *uuid = (NSString *)CFBridgingRelease(CFUUIDCreateString(kCFAllocatorDefault,uuidRef));
    NSLog(@"uuid:%@",uuid);
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
