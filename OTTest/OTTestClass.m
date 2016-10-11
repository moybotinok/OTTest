//
//  OTTestClass.m
//  OTTest
//
//  Created by Таня on 10.10.16.
//  Copyright © 2016 Таня. All rights reserved.
//

#import "OTTestClass.h"

@implementation OTTestClass


- (IBAction)startButton:(id)sender {
    [self countSquare];
    [_enterTextField endEditing:true];
}

- (IBAction)restartButton:(id)sender {
    [self restartAll];
    [_enterTextField endEditing:true];
}

- (void) awakeFromNib {
    [self restartAll];
}

- (void) restartAll {
    count = 0;
    [_resultLabel setText:@"pезультат"];
    [_countLabel setText:@"#"];
    [_enterTextField setText:@""];
    [_enterTextField setPlaceholder:@"Введите число"];
}


-(void) countSquare {
    NSString *s = [_enterTextField text];
    if ([s  isEqual: @""]) return;
    int x = [s intValue];
    int result = x;
    for (int i = 1; i < x; i++) {
        result += x;
    }
    
    [_resultLabel setText:[NSString stringWithFormat:@"%d",result]];
    count ++;
    [_countLabel setText:[NSString stringWithFormat:@"%d", count]];
}
@end
