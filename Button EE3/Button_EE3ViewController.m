//
//  Button_EE3ViewController.m
//  Button EE3
//
//  Created by Ender Jose Ocando Hung on 28/09/11.
//  Copyright 2011 Omcorp. All rights reserved.
//

#import "Button_EE3ViewController.h"

@implementation Button_EE3ViewController

@synthesize lionButton;
@synthesize nameField;
@synthesize numberField;
@synthesize sliderText;
@synthesize leftSwitch;
@synthesize rightSwitch;
@synthesize pressMeButton;
@synthesize resultButton;
@synthesize femLabel;
@synthesize depLabel;

-(IBAction)closeKeyboard:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)lionButtonCloseKeyboard:(id)sender{
    [nameField resignFirstResponder];
    [numberField resignFirstResponder];
}

-(IBAction)sliderChanged:(id)sender{
    UISlider *slider = (UISlider *)sender;
    int progressAsInt = (int)(slider.value +0.5f);
    NSString *newText = [[NSString alloc]initWithFormat:@"%d",progressAsInt ];
    sliderText.text = newText;
    [newText release];
}

-(IBAction)SegmentedControlChanged:(id)sender{
    if ([sender selectedSegmentIndex] == KSegmentedControl ) {
        leftSwitch.hidden = NO;
        rightSwitch.hidden = NO;
        depLabel.hidden = NO;
        femLabel.hidden= NO;
        pressMeButton.hidden =YES;
        resultButton.hidden = YES;
    } else {
        leftSwitch.hidden = YES;
        rightSwitch.hidden = YES;
        depLabel.hidden = YES;
        femLabel.hidden = YES;
        pressMeButton.hidden = NO;
        resultButton.hidden = NO;
    }    
}

-(IBAction)ButtonPressed:(id)sender{
    NSString *name = nameField.text;
    NSString *number = numberField.text;
    UISwitch *selectedSex = (UISwitch *)leftSwitch;
    BOOL settings = selectedSex.isOn;

    if (settings) {
        NSString *msgTitle = [[NSString alloc]initWithFormat:@"Gran Maestra %@ ",name];
        NSString *cancelMsg = [[NSString alloc]initWithFormat:@"%@ es tu numero",number];
        UIActionSheet *acctionSheet = [[UIActionSheet alloc]initWithTitle:msgTitle 
                                                                 delegate:nil cancelButtonTitle:cancelMsg destructiveButtonTitle:@"No lo es!!" otherButtonTitles:nil ];
        [acctionSheet showInView: self.view];
        [acctionSheet release];
        [msgTitle release];
    } else {
        NSString *msgTitle = [[NSString alloc]initWithFormat:@"Gran Maestro %@ ",name];
        NSString *cancelMsg = [[NSString alloc]initWithFormat:@"%@ es tu numero",number];
        UIActionSheet *acctionSheet = [[UIActionSheet alloc]initWithTitle:msgTitle delegate:nil cancelButtonTitle:cancelMsg destructiveButtonTitle:@"No lo es!!" otherButtonTitles:nil ];
        [acctionSheet showInView: self.view];
        [acctionSheet release];
        [msgTitle release];
    }
    NSString *msgTitle = [[NSString alloc]initWithFormat:@"Gran Maestro %@ ",name];
    NSString *cancelMsg = [[NSString alloc]initWithFormat:@"%@ es tu numero",number];
    UIActionSheet *acctionSheet = [[UIActionSheet alloc]initWithTitle:msgTitle delegate:nil cancelButtonTitle:cancelMsg destructiveButtonTitle:@"No lo es!!" otherButtonTitles:nil ];
    [acctionSheet showInView: self.view];
    [acctionSheet release];
    [msgTitle release];
    
}


-(IBAction)Button2Pressed:(id)sender{
    UISwitch *selectedSex = (UISwitch *)leftSwitch;
    BOOL settings = selectedSex.isOn;
    if (settings) {
        UIAlertView *alertGirl = [[UIAlertView alloc]initWithTitle:@"Eres una" 
                                                           message:@"Niña" delegate:nil cancelButtonTitle:@"Asi es!" otherButtonTitles: nil];
        [alertGirl show];
        [alertGirl release];
        
    } else {
        UIAlertView *alertBoy = [[UIAlertView alloc]initWithTitle:@"Eres un " 
                                                          message:@"niño!" delegate:nil cancelButtonTitle:@"Es Correcto" otherButtonTitles: nil];
        [alertBoy show];
        [alertBoy release];
    }
}

-(IBAction)Button3Pressed:(id)sender{
    UILabel *labelEdad = (UILabel *)sliderText.text;
    NSString *edad =[[NSString alloc]initWithFormat:@"Si sigues asi viviras %@ años mas",labelEdad ]; 
    UISwitch *selectedDeportista = (UISwitch *)rightSwitch;
    BOOL settings = selectedDeportista.isOn;
    if (settings) {
        UIAlertView *alertDepOn = [[UIAlertView alloc]initWithTitle:@"Felictaciones" message:edad delegate:nil cancelButtonTitle:@"Gracias !" otherButtonTitles:nil];
        [alertDepOn show];
        [alertDepOn release];
    } else {
        UIAlertView *alertDepOff = [[UIAlertView alloc]initWithTitle:@"Advertencia"message:@"Cambia tu estilo de vida , Haz Mas deporte.. Tu Puedes " delegate:nil cancelButtonTitle:@"Si puedo Cambiar" otherButtonTitles:@"No Puedo", nil];
        [alertDepOff show];
        [alertDepOff release];
        
    }
}


- (void)didReceiveMemoryWarning
    {
        // Releases the view if it doesn't have a superview.
        [super didReceiveMemoryWarning];
        
        // Release any cached data, images, etc that aren't in use.
    }

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc{
    [lionButton release];
    [nameField release];
    [numberField release];
    [sliderText release];
    [leftSwitch release];
    [rightSwitch release];
    [pressMeButton release];
    [resultButton release];
    [femLabel release];
    [depLabel release];
    [super dealloc];
}

@end
