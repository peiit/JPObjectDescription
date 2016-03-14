//
//  ViewController.m
//  JPObjectDescriptionDemo
//
//  Created by JiangpPei on 16/3/14.
//  Copyright © 2016年 JiangpPei. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+JPObjectDescription.h"

#import "JPBook.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    JPBook * book0 = [[JPBook alloc]init];
    book0.bId = @(0);
    book0.name = @"Objective:C程序设计(第6版)";
    book0.author = @"Stephen G. Kochan (作者), 林冀 (译者)";
    NSLog(@"%@",book0);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
