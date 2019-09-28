//
//  ViewController.m
//  hw1
//
//  Created by Юрий Нориков on 26/09/2019.
//  Copyright © 2019 norikoff. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    //    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self task1];
    [self task2];
}


/**
 Первое задание
 */
-(void) task1{
    NSMutableArray *myIntegers = [NSMutableArray array];
    [myIntegers addObject:[NSNumber numberWithInteger:24]];
    [myIntegers addObject:[NSNumber numberWithInteger:6]];
    [myIntegers addObject:[NSNumber numberWithInteger:32]];
    [myIntegers addObject:[NSNumber numberWithInteger:3]];
    [myIntegers addObject:[NSNumber numberWithInteger:81]];
    //sort ascending
    myIntegers = [NSMutableArray arrayWithArray:[myIntegers sortedArrayUsingSelector: @selector(compare:)]];
    NSLog(@"sort ascending");
    for (NSNumber *num in myIntegers) {
        NSLog(@"%@",num);
    }
    NSLog(@"----------------------------------------------");
    NSMutableArray *moreThanTwenty = [NSMutableArray array];
    NSMutableArray *multipleOfThree = [NSMutableArray array];
    NSLog(@"filter number more then 20");
    for (NSNumber *num in myIntegers) {
        if ([num integerValue]>20) {
            [moreThanTwenty addObject: num];
            NSLog(@"%@",num);
        }
    }
    NSLog(@"----------------------------------------------");
    NSLog(@"filter number multiple of three");
    for (NSNumber *num in myIntegers) {
        if ([num integerValue]%3==0) {
            [moreThanTwenty addObject: num];
            NSLog(@"%@",num);
        }
    }
    NSLog(@"----------------------------------------------");
    
    [moreThanTwenty addObjectsFromArray:multipleOfThree];
    [myIntegers addObjectsFromArray:moreThanTwenty];
    NSLog(@"collect arrays");
    for (NSNumber *num in myIntegers) {
        NSLog(@"%@",num);
    }
    NSLog(@"----------------------------------------------");
    
    
    NSSortDescriptor* sortOrder = [NSSortDescriptor sortDescriptorWithKey: @"self"
                                                                ascending: NO];
    
    NSArray *arr = [myIntegers sortedArrayUsingDescriptors: [NSArray arrayWithObject: sortOrder]];
    
    NSLog(@"arrays sort descending");
    for (NSNumber *num in arr) {
        NSLog(@"%@",num);
    }
    NSLog(@"----------------------------------------------");
}


/**
 второе задание
 */
-(void) task2{
    NSArray *arr = @[@"cataclism",@"catepillar",@"cat",@"teapot",@"truncate"];
    NSString *str = @"cat";
    //filer
    NSPredicate* predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH %@", str];
    NSArray* filteredData = [arr filteredArrayUsingPredicate:predicate];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    
    //show filtered array
    for (NSString *s in filteredData) {
        [dict setObject: @(s.length) forKey:s];
        NSLog(@"%@",s);
    }
    //dictionary str-length
    NSLog(@"%@",dict);
    
}


@end
