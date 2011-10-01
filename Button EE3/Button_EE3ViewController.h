//
//  Button_EE3ViewController.h
//  Button EE3
//
//  Created by Ender Jose Ocando Hung on 28/09/11.
//  Copyright 2011 Omcorp. All rights reserved.
//

#import <UIKit/UIKit.h>
#define KSegmentedControl 0

@interface Button_EE3ViewController : UIViewController <UIActionSheetDelegate> {
    UIButton *lionButton;
    UITextField *nameField;
    UITextField *numberField;
    UILabel *sliderText;
    UISwitch *leftSwitch;
    UISwitch *rightSwitch;
    UILabel *femLabel;
    UILabel *depLabel;
    UIButton *pressMeButton;
    UIButton *resultButton;
}
@property(nonatomic,retain) IBOutlet UIButton *lionButton;
@property(nonatomic,retain) IBOutlet UITextField *nameField;
@property(nonatomic,retain) IBOutlet UITextField *numberField;
@property(nonatomic,retain) IBOutlet UILabel *sliderText;
@property(nonatomic,retain, getter = isOn) IBOutlet UISwitch *leftSwitch;
@property(nonatomic,retain) IBOutlet UISwitch *rightSwitch;
@property(nonatomic,retain) IBOutlet UIButton *pressMeButton;
@property(nonatomic,retain) IBOutlet UIButton *resultButton;
@property(nonatomic,retain) IBOutlet UILabel *femLabel;
@property(nonatomic,retain) IBOutlet UILabel *depLabel;

-(IBAction)lionButtonCloseKeyboard:(id)sender;
-(IBAction)closeKeyboard:(id)sender;
-(IBAction)sliderChanged:(id)sender;
-(IBAction)SegmentedControlChanged:(id)sender;
-(IBAction)ButtonPressed:(id)sender;
-(IBAction)Button2Pressed:(id)sender;
-(IBAction)Button3Pressed:(id)sender;

@end
