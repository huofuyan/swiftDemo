//
//  ViewController.m
//  plist存储
//
//  Created by apple on 2017/10/18.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //获取本地沙盒路径
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
//    获取完整路径
    NSString *documentsPath = [path objectAtIndex:0];
    NSString *plistPath = [documentsPath stringByAppendingPathComponent:@"user.plist"];
    
//    创建数据
    NSMutableDictionary *newsDict = [NSMutableDictionary dictionary];
    //赋值
    [newsDict setObject:@"zhangsan" forKey:@"name"];
    [newsDict setObject:@"12" forKey:@"age"];
    [newsDict setObject:@"man" forKey:@"sex"];
    
    [newsDict writeToFile:plistPath atomically:YES];
    
    
    NSMutableDictionary *getDict = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
    
    NSLog(@"%@",getDict);
    
    [self getPlistPath];
}

-(void) getPlistPath {
    
    //用新建文件的方式常见的plist文件，获取其路径的方法如下
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"aaa" ofType:@"plist"];
    
    
    NSDictionary *dict = @{@"NumBer":@"1234"
                           
                           };
    
    [dict writeToFile:filePath atomically:YES];
    
    
 
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
