//
//  ViewController.m
//  GCDImageView
//
//  Created by 程朋 on 14-3-24.
//  Copyright (c) 2014年 程朋. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];


    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
       
        NSURL *url = [NSURL URLWithString:@"http://a.hiphotos.baidu.com/image/h%3D800%3Bcrop%3D0%2C0%2C1280%2C800/sign=73d6514a3b12b31bd86cc029b6235508/f636afc379310a55b34213f9b54543a98226105c.jpg"];
        NSData *data = [[NSData alloc]initWithContentsOfURL:url];
        UIImage *image = [[UIImage alloc]initWithData:data];
        if (data !=nil) {
            dispatch_async(dispatch_get_main_queue(), ^{
                self.l_imageView.image = image;
            });
        }
        
    });

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
