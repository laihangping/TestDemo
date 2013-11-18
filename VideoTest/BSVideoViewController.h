//
//  BSVideoViewController.h
//  VideoTest
//
//  Created by LaiHangping on 11/8/13.
//  Copyright (c) 2013 Bangsun FIT Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
@interface BSVideoViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIView *view1;
@property (strong, nonatomic) IBOutlet UIView *view2;
@property (copy,   nonatomic) NSURL *movieURL;
@property (strong, nonatomic) MPMoviePlayerController *movieController;
@property (copy,   nonatomic) NSURL *movieURL2;
@property (strong, nonatomic) MPMoviePlayerController *movieController2;
@end
