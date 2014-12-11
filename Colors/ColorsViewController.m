//
//  ColorsViewController.m
//  Colors
//
//  Created by Allan Garcia on 6/8/14.
//  Copyright (c) 2014 IFRN. All rights reserved.
//

#import "ColorsViewController.h"
#import "BackgroundColorViewController.h"

@interface ColorsViewController ()

@end

@implementation ColorsViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"Push Segue to BackgroundColorViewController"]) {
        if ([segue.destinationViewController isKindOfClass:[BackgroundColorViewController class]]) {
            BackgroundColorViewController *bcvc = (BackgroundColorViewController *)segue.destinationViewController;
            if ([sender isKindOfClass:[UIButton class]]) {
                UIButton *colorButton = (UIButton *)sender;
                bcvc.backgroundColor = colorButton.titleLabel.text;
            }
        }
    }
}

- (IBAction)colorButtonTapped:(UIButton *)sender {
    [self performSegueWithIdentifier:@"Push Segue to BackgroundColorViewController"
                              sender:sender];
}

@end
