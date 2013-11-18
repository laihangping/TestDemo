//
//  BSVideoViewController.m
//  VideoTest
//
//  Created by LaiHangping on 11/8/13.
//  Copyright (c) 2013 Bangsun FIT Ltd. All rights reserved.
//

#import "BSVideoViewController.h"

@interface BSVideoViewController ()

@end

@implementation BSVideoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationController.navigationBar.translucent = NO;
    // Do any additional setup after loading the view from its nib.
    self.movieController = [[MPMoviePlayerController alloc] init];
//    
//    //读取本地
//    NSString *movstr= [NSString stringWithFormat:@"%d",2];
//    NSString *url = [[NSBundle mainBundle] pathForResource:movstr ofType:@"mov"];
//    self.movieURL = [NSURL fileURLWithPath:url];
//    
//    [self.movieController setContentURL:self.movieURL];
//    //读取远程
//     [self.movieController setContentURL:[NSURL URLWithString:@"http://archive.org/download/WaltDisneyCartoons-MickeyMouseMinnieMouseDonaldDuckGoofyAndPluto/WaltDisneyCartoons-MickeyMouseMinnieMouseDonaldDuckGoofyAndPluto-HawaiianHoliday1937-Video.mp4"]];
//    
//    [self.movieController.view setFrame:CGRectMake ( 0, 0, 200, 200)];
//    
//    [self.view1 addSubview:self.movieController.view];
//    self.movieController.shouldAutoplay = NO;//暂停
//    [self.movieController setCurrentPlaybackTime:0.1];//暂停在0.1秒
    
    
    //读取远程
    [self.movieController setContentURL:[NSURL URLWithString:@"http://ocj2.smgbb.cn/ocj1/ocj1.m3u8"]];
    
    [self.movieController.view setFrame:CGRectMake ( 0, 0, 400, 400)];
    
    [self.view1 addSubview:self.movieController.view];
    self.movieController.shouldAutoplay = YES;//暂停
    self.movieController.movieSourceType =MPMovieSourceTypeStreaming;
    [self.movieController play];
//        self.navigationController.navigationBar.hidden = YES;
//        // Do any additional setup after loading the view from its nib.
//        self.movieController = [[MPMoviePlayerController alloc] initWithContentURL:[NSURL URLWithString:@"http://archive.org/download/WaltDisneyCartoons-MickeyMouseMinnieMouseDonaldDuckGoofyAndPluto/WaltDisneyCartoons-MickeyMouseMinnieMouseDonaldDuckGoofyAndPluto-HawaiianHoliday1937-Video.mp4"]];
//
//    self.movieController.controlStyle=MPMovieControlStyleDefault;
//    [self.movieController play];
//    //[path release];
//    [self.movieController.view setFrame:self.view.bounds];  // player的尺寸
//    [self.view addSubview: self.movieController.view];
//    self.movieController.shouldAutoplay=YES;
}
- (void)moviePlayBackDidFinish:(NSNotification *)notification
{
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
