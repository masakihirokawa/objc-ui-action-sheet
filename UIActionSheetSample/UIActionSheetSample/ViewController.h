//
//  ViewController.h
//  UIActionSheetSample
//
//  Created by 廣川政樹 on 2013/04/01.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIActionSheetDelegate>

@property (weak, nonatomic) IBOutlet UILabel *myLabel;

- (IBAction)tapButton:(id)sender;

@end
