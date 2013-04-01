//
//  ViewController.m
//  UIActionSheetSample
//
//  Created by 廣川政樹 on 2013/04/01.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  //ラベルのテキストを非表示にする
  self.myLabel.text = NULL;
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (IBAction)tapButton:(id)sender {
  //ボタンをタップでアクションシート呼び出し
  UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                initWithTitle:@"Title"
                                delegate:self
                                cancelButtonTitle:@"Cancel"
                                destructiveButtonTitle:@"Caution"
                                otherButtonTitles:@"One",@"Two", nil];
  //アクションシートを Viewに追加
  [actionSheet showInView:self.view];
}

- (void)actionSheet:(UIActionSheet *)actionSheet
clickedButtonAtIndex:(NSInteger)buttonIndex
{
  //アクションシートのボタンが押された時に、ボタンのインデックス番号を返す
  self.myLabel.text = [NSString stringWithFormat:@"ボタン=%d", buttonIndex];
}

@end
