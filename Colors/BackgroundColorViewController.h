//
//  BackgroundColorViewController.h
//  Colors
//
//  Created by Allan Garcia on 6/8/14.
//  Copyright (c) 2014 IFRN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BackgroundColorViewController : UIViewController

@property (strong, nonatomic) NSString *backgroundColor;

+ (NSDictionary *)validsBackgroundColors;

@end
