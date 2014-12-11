//
//  BackgroundColorViewController.m
//  Colors
//
//  Created by Allan Garcia on 6/8/14.
//  Copyright (c) 2014 IFRN. All rights reserved.
//

#import "BackgroundColorViewController.h"

@interface BackgroundColorViewController ()
@property (strong, nonatomic) UIColor *realBackgroundColor;
@property (weak, nonatomic) IBOutlet UILabel *colorDescriptionLabel;
@end

@implementation BackgroundColorViewController

+ (NSDictionary *)validsBackgroundColors
{
    return @{@"Azul": [UIColor blueColor],
             @"Amarelo": [UIColor yellowColor],
             @"Vermelho": [UIColor redColor],
             @"Verde": [UIColor greenColor]};
}

- (void)setBackgroundColor:(NSString *)backgroundColor
{
    NSDictionary *validsBackgroundColors = [[self class] validsBackgroundColors];
    if ([[validsBackgroundColors allKeys] containsObject:backgroundColor]) {
        self.realBackgroundColor = validsBackgroundColors[backgroundColor];
        _backgroundColor = backgroundColor;
    }
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    NSDictionary *validsBackgroundColors = [BackgroundColorViewController validsBackgroundColors];
    NSArray *keys = [validsBackgroundColors allKeys];
    NSArray *values = [validsBackgroundColors allValues];
    NSUInteger index = [values indexOfObject:self.realBackgroundColor];
    if (index == NSNotFound) {
        self.colorDescriptionLabel.text = @"Not implemented";
        self.view.backgroundColor = [UIColor lightGrayColor];
    } else {
        self.view.backgroundColor = self.realBackgroundColor;
        self.colorDescriptionLabel.text = keys[index];
    }
}

@end
