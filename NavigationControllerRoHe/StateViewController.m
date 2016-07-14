//
//  StateViewController.m
//  NavigationControllerRoHe
//
//  Created by RobertoHerrera on 6/27/16.
//  Copyright © 2016 RobertoHerrera. All rights reserved.
//

#import "StateViewController.h"
#import <Google/Analytics.h>

@interface StateViewController ()

@property NSMutableArray *municipiosTitles;
@property NSString *stMunicipioSelected;

@end

@implementation StateViewController

-(void)viewWillAppear:(BOOL)animated{
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker set:kGAIScreenName value:@"StateViewController"];
    [tracker send:[[GAIDictionaryBuilder createScreenView] build]];
}
/*********************************************************************************************/
#pragma mark - Initialization methods
/*********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    self.lblState2.text          = self.destinationTitle;
    self.lblDescription2.text    = self.destinationDescription;
    self.imgState2.image   = [UIImage imageNamed:self.destinationPhoto];
    
    self.lblDescription2.numberOfLines = 0;
    [self.lblDescription2 sizeToFit];
    [self initController];

 }
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-------------------------------------------------------------------------------
- (void)initController {
    if ([self.destinationTitle  isEqual: @"Colima"]) {
        self.municipiosTitles   = [[NSMutableArray alloc] initWithObjects: @"Armeria", @"Colima", @"Comala", @"Manzanillo", @"Tecoman", nil];
    }else  if ([self.destinationTitle  isEqual: @"Durango"]) {
        self.municipiosTitles   = [[NSMutableArray alloc] initWithObjects: @"Durango", @"Gomez Palacios", @"Lerdo", @"Mezquital", @"Pueblo Nuevo", nil];
    }else  if ([self.destinationTitle  isEqual: @"Jalisco"]) {
        self.municipiosTitles   = [[NSMutableArray alloc] initWithObjects: @"Guadalajara", @"Mascota", @"Colotlan", @"Ameca", @"Puerto Vallarta", nil];
    }else  if ([self.destinationTitle  isEqual: @"Nayarit"]) {
        self.municipiosTitles   = [[NSMutableArray alloc] initWithObjects: @"Acaponeta", @"Bahia de Banderas", @"Tuxpan", @"Ixtlan del Rio", @"Tepic", nil];
    }else  if ([self.destinationTitle  isEqual: @"Sinaloa"]) {
        self.municipiosTitles   = [[NSMutableArray alloc] initWithObjects: @"Culiacan", @"Guasave", @"Mazatlan", @"Guamuchil", @"Los Mochis", nil];
    }
    
}
/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.municipiosTitles.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44;
}
//-------------------------------------------------------------------------------
-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    //1. Setup the CATransform3D structure
    CATransform3D rotation;
    rotation = CATransform3DMakeRotation( (90.0*M_PI)/180, 0.0, 0.7, 0.4);
    rotation.m34 = 1.0/ -600;
    
    //2. Define the initial state (Before the animation)
    cell.layer.shadowColor = [[UIColor blackColor]CGColor];
    cell.layer.shadowOffset = CGSizeMake(10, 10);
    cell.alpha = 0;
    
    cell.layer.transform = rotation;
    cell.layer.anchorPoint = CGPointMake(0, 0.5);
    
    //3. Define the final state (After the animation) and commit the animation
    [UIView beginAnimations:@"rotation" context:NULL];
    [UIView setAnimationDuration:0.4];
    cell.layer.transform = CATransform3DIdentity;
    cell.alpha = 1;
    cell.layer.shadowOffset = CGSizeMake(0, 0);
    
    //Reassure that cell its in its place (WaGo)
    cell.frame = CGRectMake(0, cell.frame.origin.y, cell.frame.size.width, cell.frame.size.height);
    [UIView commitAnimations];
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellStates *cell = (cellStates *)[tableView dequeueReusableCellWithIdentifier:@"cellStates"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellStates" bundle:nil] forCellReuseIdentifier:@"cellStates"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellStates"];
    }
    //Fill cell with info from arrays
    
    cell.lblMunicipio.text              = self.municipiosTitles[indexPath.row];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    self.stMunicipioSelected        = self.municipiosTitles[indexPath.row];
    [self performSegueWithIdentifier:@"MunicipioViewController" sender:self];
}


/*********************************************************************************************/
 #pragma mark - Navigation
/*********************************************************************************************/
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
     
     if ([segue.destinationViewController isKindOfClass:[MunicipioViewController class]]) {
         MunicipioViewController *destinationState     = [segue destinationViewController];
         destinationState.destinationMunicpio        = self.stMunicipioSelected;

     }
 }



@end

