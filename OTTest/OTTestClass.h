//
//  OTTestClass.h
//  OTTest
//
//  Created by Таня on 10.10.16.
//  Copyright © 2016 Таня. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface OTTestClass : UIViewController {
    int count;
    
}
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (weak, nonatomic) IBOutlet UITextField *enterTextField;

- (IBAction)startButton:(id)sender;
- (IBAction)restartButton:(id)sender;
- (void) restartAll;
- (void) countSquare;
@end
