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
    
    //Demo 1
    JPBook * book0 = [[JPBook alloc]init];
    book0.bId = @(0);
    book0.name = @"Objective:C程序设计(第6版)";
    book0.author = @"Stephen G. Kochan (作者), 林冀 (译者)";
    NSLog(@"%@",book0);
    
    //Demo 2
    JPBook * book1 = [[JPBook alloc]init];
    book1.bId = @(1);
    book1.name = @"精通iOS开发(第7版)";
    book1.author = @"马克 (David Mark) (作者), Jack Nutting (作者), Kim Topley (作者), Fredrik Olsson (作者), 等 (作者), 周庆成 (译者), 邓强 (译者), 武海峰 (译者), 蒋振华 (译者)";
    NSArray * books = @[book0,book1];
    NSLog(@"%@",books);
    
    
    //Demo 3
    JPBookContent * bookContent2 = [[JPBookContent alloc]init];
    bookContent2.size = @(150000);
    bookContent2.content = @"Objective C is the best programming language in the world";
    
    JPBook * book2 = [[JPBook alloc]init];
    book2.bId = @(2);
    book2.name = @"Objective C";
    book2.author = @"Apple";
    book2.content = bookContent2;
    NSLog(@"%@",bookContent2);
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
