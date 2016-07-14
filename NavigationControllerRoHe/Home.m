//
//  ViewController.m
//  NavigationControllerRoHe
//
//  Created by RobertoHerrera on 6/27/16.
//  Copyright © 2016 RobertoHerrera. All rights reserved.
//

#import "Home.h"
#import <Google/Analytics.h>


@interface Home ()
@property NSMutableArray *destinationTitles;
@property NSMutableArray *destinationDescriptions;
@property NSMutableArray *destinationPhotos;

@property NSString *stTitleSelected;
@property NSString *stDescriptionSelected;
@property NSString *stPhotoSelected;

@end

@implementation Home

-(void)viewWillAppear:(BOOL)animated{
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker set:kGAIScreenName value:@"Home"];
    [tracker send:[[GAIDictionaryBuilder createScreenView] build]];
}
/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
    
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-------------------------------------------------------------------------------
- (void)initController {
    self.destinationTitles          = [[NSMutableArray alloc] initWithObjects: @"Colima", @"Durango", @"Jalisco", @"Nayarit", @"Sinaloa", nil];
    self.destinationPhotos          = [[NSMutableArray alloc] initWithObjects: @"colima.png", @"durango.png", @"jalisco.png", @"nayarit.png", @"sinaloa.png", nil];
    self.destinationDescriptions   = [[NSMutableArray alloc] initWithObjects:
                                      @"Fundada en 1523 el nombre de Colima, viene del náhuatl Acolman, que significa -lugar donde tuerce el agua lugar donde hace recodo el río-. El territorio de Colima, del que casi tres cuartas partes de superficie están cubiertas por montañas y colinas, queda comprendido dentro de una derivación de la Sierra Madre del Sur, que se compone de cuatro sistemas montañosos.",
                                      @"Durango se ha convertido en uno de los estados turísticos más importantes por sus paisajes y lugares turísticos para visitar es un lugar perfecto para disfrutar de alguna aventura, para personas que gustan de emociones fuertes",
                                      @"Jalisco es uno de los estados más típicos del país, ya que es el símbolo del tequila, mariachi, charería y mujeres bellas. Es un estado geográficamente privilegiado ya que cuenta con playas como Puerto Vallarta, Barra de Navidad, Melaque, Costalegre y Tenacatita. Así mismo contamos con el lago más grande de México que es Chapala donde se pueden encontrar pueblos típicos como Chapala, Ajijic, Jocotepec y Tizapan el Alto.",
                                      @"Nayarit es un estado que cuenta con distintos lugares vacacionales para disfrutar en familia o con amigos entre estos se encuentra algunas lagunas encantadas y pueblos mágicos.",
                                      @"El estado de Sinaloa cuenta con importantes monumentos arquitectónicos e históricos y grandes bellezas coloniales. Las ruinas jesuitas en el pueblo de Cosala, Sinaloa.", nil];
}
/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.destinationTitles.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 190;
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
    cellHome *cell = (cellHome *)[tableView dequeueReusableCellWithIdentifier:@"cellHome"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellHome" bundle:nil] forCellReuseIdentifier:@"cellHome"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellHome"];
    }
    //Fill cell with info from arrays
    
    cell.lblState.text   = self.destinationTitles[indexPath.row];
    cell.lblDescription.text        = self.destinationDescriptions[indexPath.row];
    cell.imgState.image       = [UIImage imageNamed:self.destinationPhotos[indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    self.stTitleSelected        = self.destinationTitles[indexPath.row];
    self.stDescriptionSelected  = self.destinationDescriptions[indexPath.row];
    self.stPhotoSelected        = self.destinationPhotos[indexPath.row];
    
    [self performSegueWithIdentifier:@"StateViewController" sender:self];
}
/*********************************************************************************************/
#pragma mark - Navigation
/*********************************************************************************************/
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.destinationViewController isKindOfClass:[StateViewController class]]) {
        StateViewController *destinationState     = [segue destinationViewController];
        destinationState.destinationTitle        = self.stTitleSelected;
        destinationState.destinationDescription  = self.stDescriptionSelected;
        destinationState.destinationPhoto        = self.stPhotoSelected;
    }
}


@end
